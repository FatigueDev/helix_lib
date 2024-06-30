using Vintagestory.API.Common;
using Vintagestory.API.Server;
using Vintagestory.API.Client;
using MoonSharp.Interpreter;
using MoonSharp.VsCodeDebugger;
using HelixLib.Types;

namespace HelixLib
{
    public class HelixLib : ModSystem
    {
        // private MoonSharpVsCodeDebugServer debugger;

        public override void StartPre(ICoreAPI api)
        {
            
            // if(api.Side == EnumAppSide.Client)
            // {
            //     debugger = new MoonSharpVsCodeDebugServer(41912).Start();
            // }
            // else if(api.Side == EnumAppSide.Server)
            // {
            //     debugger = new MoonSharpVsCodeDebugServer(41913).Start();
            // }
            // else
            // {
            //     debugger = new MoonSharpVsCodeDebugServer(41914).Start();
            // }

            AssemblyRegistration.Register(api, false);

            var sandbox = CoreModules.Preset_SoftSandbox | CoreModules.LoadMethods;

            var baseModPath = Mod.SourcePath + "/mods";

            ModLoader modLoader = new ModLoader(sandbox);

            foreach(var modDirectory in Directory.GetDirectories(baseModPath))
            {
                modLoader.LoadMod(modDirectory, sandbox, api);
            }

            foreach(var helixMod in modLoader.helixMods)
            {
                if(api.Side == EnumAppSide.Universal)
                {
                    // debugger.AttachToScript(helixMod.script, helixMod.mod.name);
                }

                if(api.Side == EnumAppSide.Server)
                {
                    // debugger.AttachToScript(helixMod.script, helixMod.mod.name);
                }

                if(api.Side == EnumAppSide.Client)
                {
                    // debugger.AttachToScript(helixMod.script, helixMod.mod.name);

                    EventHandler.SetupClientsideEvents(api as ICoreClientAPI, helixMod);
                }
            }

            base.StartPre(api);
        }

        public override void Start(ICoreAPI api)
        {
            base.Start(api);
        }

        public override double ExecuteOrder()
        {
            return -1;
        }

        public override void StartClientSide(ICoreClientAPI api)
        {
            base.StartClientSide(api);
        }

        public override void StartServerSide(ICoreServerAPI api)
        {
            base.StartServerSide(api);
        }

        public override void Dispose()
        {
            base.Dispose();
        }
    }
}