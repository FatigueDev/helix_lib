using Vintagestory.API.Common;
using Vintagestory.API.Server;
using Vintagestory.API.Client;
using MoonSharp.Interpreter;
using System.Diagnostics;

#if DEBUG
using MoonSharp.VsCodeDebugger;
#endif

namespace HelixLib
{
    public class HelixLib : ModSystem
    {
        #if DEBUG
        private MoonSharpVsCodeDebugServer debugger;
        #endif

        private ICoreAPI api;
        private ModLoader modLoader = new();
        private FileSystemWatcher fileSystemWatcher;

        public override void StartPre(ICoreAPI api)
        {
            if(api.Side == EnumAppSide.Server)
            {
                this.api = api as ICoreServerAPI;

                #if DEBUG
                debugger = new MoonSharpVsCodeDebugServer(41912).Start();
                #endif
            }
            else if(api.Side == EnumAppSide.Client)
            {
                this.api = api as ICoreClientAPI;

                #if DEBUG
                debugger = new MoonSharpVsCodeDebugServer(41913).Start();
                #endif
            }
            
            //TODO; monkey patch the entire ModLoader to handle Lua style mods
            // api.ModLoader.Mods.AddItem(new LuaMod(new FileInfo(Mod.FileName), api.Logger, true));
            // this.Mod.Systems.AddItem(new LuaModSystem(api)); 

            Debug.WriteLine(api.DataBasePath);

            AssemblyRegistration.Register(api, false);

            var sandbox =   CoreModules.Metatables |
                            CoreModules.ErrorHandling |
                            CoreModules.Coroutine |
                            CoreModules.Preset_HardSandbox |
                            CoreModules.OS_Time |
                            CoreModules.Dynamic |
                            CoreModules.LoadMethods;

            var baseModPath = Mod.SourcePath + "/mods";

            foreach(var modDirectory in Directory.GetDirectories(baseModPath))
            {
                #if DEBUG
                HelixMod? mod = modLoader.LoadMod(Mod.SourcePath, modDirectory, sandbox, api);
                if(mod != null)
                {
                    debugger.AttachToScript(mod.Value.script, mod.Value.modInfo.name, s => s.Name);
                }
                #else
                modLoader.LoadMod(Mod.SourcePath, modDirectory, sandbox, api);
                #endif
            }

            fileSystemWatcher = new FileSystemWatcher($"{baseModPath}")
            {
                NotifyFilter = NotifyFilters.CreationTime
                                | NotifyFilters.DirectoryName
                                | NotifyFilters.FileName
                                | NotifyFilters.LastWrite
                                | NotifyFilters.Size
            };

            fileSystemWatcher.Changed += modLoader.OnChanged;
            fileSystemWatcher.Created += modLoader.OnCreated;
            fileSystemWatcher.Deleted += modLoader.OnDeleted;
            fileSystemWatcher.Renamed += modLoader.OnRenamed;

            fileSystemWatcher.Filter = "*.lua";
            fileSystemWatcher.IncludeSubdirectories = true;
            fileSystemWatcher.EnableRaisingEvents = true;

            #if DEBUG
            if(api.Side == EnumAppSide.Server)
            {
                Console.WriteLine("MoonSharp listening on Server");
                api.Logger.Event("Please connect your MoonSharp (Server) debugger now.");
            }
            else if(api.Side == EnumAppSide.Client)
            {
                Console.WriteLine("MoonSharp listening on Client");
                api.Logger.Event("Please connect your MoonSharp (Client) debugger now.");
            }
            
            while(!debugger.AwaitDebuggerAttach(api.Side))
            {
                // Waiting ...
            }
            #endif

            StartHelixInit(StartType.StartPre);

            base.StartPre(api);
        }

        public override void Start(ICoreAPI api)
        {
            StartHelixInit(StartType.Start);
            base.Start(api);
        }

        public override void AssetsLoaded(ICoreAPI api)
        {
            StartHelixInit(StartType.AssetsLoaded);
            base.AssetsLoaded(api);
        }

        public override void AssetsFinalize(ICoreAPI api)
        {
            StartHelixInit(StartType.AssetsFinalized);
            base.AssetsFinalize(api);
        }

        public override double ExecuteOrder()
        {
            return -1;
        }

        public override void StartClientSide(ICoreClientAPI api)
        {
            StartHelixInit(StartType.StartClientside);
            base.StartClientSide(api);
        }

        public override void StartServerSide(ICoreServerAPI api)
        {
            StartHelixInit(StartType.StartServerside);
            base.StartServerSide(api);
        }

        public override void Dispose()
        {
            #if DEBUG
            debugger.Dispose();
            #endif

            base.Dispose();
        }

        public void StartHelixInit(StartType startType)
        {
            IEnumerable<DynValue> initCallbacks;

            foreach(HelixMod helixMod in modLoader.helixMods)
            {
                switch (startType)
                {
                    case StartType.StartPre: initCallbacks = helixMod.modInit.startPre; break;
                    case StartType.Start: initCallbacks = helixMod.modInit.start; break;
                    case StartType.StartClientside: initCallbacks = helixMod.modInit.startClientside; break;
                    case StartType.StartServerside: initCallbacks = helixMod.modInit.startServerside; break;
                    case StartType.AssetsLoaded: initCallbacks = helixMod.modInit.assetsLoaded; break;
                    case StartType.AssetsFinalized: initCallbacks = helixMod.modInit.assetsFinalized; break;
                    default: initCallbacks = new List<DynValue>(); break;
                }

                foreach(DynValue dynValue in initCallbacks.ToList())
                {
                    try
                    {
                        helixMod.script.Call(dynValue);
                    }
                    catch(Exception e)
                    {
                        api.Logger.Error(e.Message);
                    }
                }
            }
        }

        public enum StartType
        {
            StartPre,
            Start,
            StartClientside,
            StartServerside,
            AssetsLoaded,
            AssetsFinalized
        }
    }
}