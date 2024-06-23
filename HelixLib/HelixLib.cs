using Vintagestory.API.Common;
using Vintagestory.API.Server;
using Vintagestory.API.Client;
using MoonSharp.Interpreter;
using MoonSharp.VsCodeDebugger;

namespace HelixLib
{
    public class HelixLib : ModSystem
    {
        public string scriptSideDirectory = string.Empty;

        private MoonSharpVsCodeDebugServer debugServer = new();
        private Script scriptClientside = new();
        private Script scriptServerside = new();
        private Script scriptUniversal = new();

        public override void StartPre(ICoreAPI api)
        {
            AssemblyRegistration.RegisterAllAssemblies(api);

            // SetupUniversal(api);

            base.StartPre(api);
        }

        public override void Start(ICoreAPI api)
        {
            base.Start(api);
        }

        public void RegisterCallbackLoop(ICoreClientAPI api)
        {
            // This is a good example of what Helix can do.
            // We set up a callback that'll tick every 1.5 seconds,
            // and every 1.5 seconds it'll read and run the file.
            // Start the game and change the file, go crazy.
            api.Logger.Event($"HELIX: Trying to run print event at {scriptSideDirectory}print_event.lua");
            api.Logger.Event($"HELIX: Value of client script global API is- {scriptClientside.Globals["ICoreClientAPI"]}");
            scriptClientside.DoFile(scriptSideDirectory + "print_event.lua");
            api.Event.RegisterCallback((dt) => RegisterCallbackLoop(api), 1500);
        }

        public override double ExecuteOrder()
        {
            return 1.1;
        }

        public override void StartClientSide(ICoreClientAPI api)
        {
            SetupClientside(api);

            api.Event.RegisterCallback((dt) => RegisterCallbackLoop(api), 0);

            base.StartClientSide(api);
        }

        public override void StartServerSide(ICoreServerAPI api)
        {
            SetupServerside(api);
            
            base.StartServerSide(api);
        }

        public void SetupClientside(ICoreClientAPI api)
        {
            SetScriptPath(EnumAppSide.Client);
            scriptClientside.Globals["ICoreClientAPI"] = api;
        }

        public void SetupServerside(ICoreServerAPI api)
        {
            SetScriptPath(EnumAppSide.Server);
            scriptServerside.Globals["ICoreServerAPI"] = api;
        }

        public void SetupUniversal(ICoreAPI api)
        {
            SetScriptPath(EnumAppSide.Universal);
            scriptUniversal.Globals["ICoreAPI"] = api;
        }

        public void SetScriptPath(EnumAppSide side)
        {
            var scriptDirectory = $"{Mod.SourcePath}/scripts/";

            switch(side)
            {
                case EnumAppSide.Client:
                    scriptSideDirectory = $"{scriptDirectory}client/";
                break;
                case EnumAppSide.Server:
                    scriptSideDirectory = $"{scriptDirectory}server/";
                break; 
                case EnumAppSide.Universal:
                    scriptSideDirectory = $"{scriptDirectory}universal/";
                break;
                default: break;
            }
        }

        public override void Dispose()
        {
            debugServer.Dispose();
            base.Dispose();
        }
    }
}