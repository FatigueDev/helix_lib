using System.Text.Json;
using System.Text.Json.Serialization;
using System.Text.Json.Serialization.Metadata;
using System.Text.RegularExpressions;
using HelixLib.Types;
using MoonSharp;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Loaders;
using MoonSharp.Interpreter.Serialization.Json;
using Namotion.Reflection;
using Newtonsoft.Json;
using Vintagestory.API.Client;
using Vintagestory.API.Common;
using Vintagestory.API.Server;

namespace HelixLib
{
    public class ModLoader
    {
        Script modLoaderScript;

        public List<HelixMod> helixMods = new();

        public ModLoader(CoreModules coreModules)
        {
            modLoaderScript = new Script(coreModules);
            ((ScriptLoaderBase)modLoaderScript.Options.ScriptLoader).IgnoreLuaPathGlobal = true;
            
            modLoaderScript.Globals["HelixMod"] = new Types.Mod();
            modLoaderScript.Globals["GenericEventHook"] = new GenericEventHook();
            modLoaderScript.Globals["EventClientside"] = new EventClientside();
            modLoaderScript.Globals["EventServerside"] = new EventServerside();
            modLoaderScript.Globals["EventShared"] = new EventShared();
        }

        public void LoadMod(string modDirectory, CoreModules coreModules, ICoreAPI api)
        {
            ((ScriptLoaderBase)modLoaderScript.Options.ScriptLoader).ModulePaths = new string[] {$"{modDirectory}/scripts/?", $"{modDirectory}/scripts/?.lua"};

            DynValue? modResult = modLoaderScript.TryDoFile(modDirectory + "/modinfo.lua", null, api);
            Types.Mod mod = modResult.ToObject<Types.Mod>();

            var script = new Script(coreModules);
            script.Options.DebugPrint = api.Logger.Event;
            ((ScriptLoaderBase)script.Options.ScriptLoader).ModulePaths = new string[] {$"{modDirectory}/scripts/?", $"{modDirectory}/scripts/?.lua"};
            ((ScriptLoaderBase)script.Options.ScriptLoader).IgnoreLuaPathGlobal = true;
            
            if(api is ICoreClientAPI capi)
            {
                script.Globals["capi"] = capi;
            }
            
            if(api is ICoreServerAPI sapi)
            {
                script.Globals["sapi"] = sapi;
            }
            
            script.Globals["api"] = api;

            script.Globals["Threads"] = new Threads();

            HelixMod modInfo = new()
            {
                script = script,
                mod = mod,
                modFolder = modDirectory,
                scriptsFolder = modDirectory + "/scripts",
                clientScripts = new(),
                serverScripts = new(),
                sharedScripts = new()
            };

            foreach(var clientScript in Directory.GetFiles(modInfo.scriptsFolder, "cl_*.lua", SearchOption.AllDirectories))
            {
                modInfo.clientScripts.Add(clientScript);
            }

            foreach(var serverScript in Directory.GetFiles(modInfo.scriptsFolder, "sv_*.lua", SearchOption.AllDirectories))
            {
                modInfo.serverScripts.Add(serverScript);
            }

            foreach(var sharedScript in Directory.GetFiles(modInfo.scriptsFolder, "sh_*.lua", SearchOption.AllDirectories))
            {
                modInfo.sharedScripts.Add(sharedScript);
            }

            helixMods.Add(modInfo);

            api.Logger.Event("HELIX: Loaded " + mod?.name + ", " + mod?.version);
        }
    }

    public struct HelixMod
    {
        public Script script;
        public Types.Mod mod;
        public string modFolder;
        public string scriptsFolder;
        public List<string> clientScripts;
        public List<string> serverScripts;
        public List<string> sharedScripts;
    }
}