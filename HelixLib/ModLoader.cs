using System.ComponentModel.DataAnnotations;
using System.Text;
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
        public List<HelixMod> helixMods = new();
        private ICoreAPI api;

        public HelixMod? LoadMod(string basePath, string modDirectory, CoreModules coreModules, ICoreAPI api)
        {
            this.api = api;

            var script = new Script(coreModules);
            script.Options.DebugPrint = DebugPrint;

            ((ScriptLoaderBase)script.Options.ScriptLoader).ModulePaths = new string[] {
                $"{modDirectory}/scripts/?",
                $"{modDirectory}/scripts/?.lua",
                $"{basePath}/annotations/?",
                $"{basePath}/annotations/?.lua",
                $"{basePath}/lua_libraries/?",
                $"{basePath}/lua_libraries/?.lua",
                };
            ((ScriptLoaderBase)script.Options.ScriptLoader).IgnoreLuaPathGlobal = true;

            Table helixTable = new Table(script);
            helixTable.Set("ModInfo", DynValue.FromObject(script, new Types.ModInfo()));
            helixTable.Set("ModInit", DynValue.FromObject(script, new Types.ModInit()));

            script.Globals["Helix"] = helixTable;

            DynValue modInfoResult = script.TryDoFile(modDirectory + "/modinfo.lua", script.Globals, api);
            if(modInfoResult == DynValue.Nil) return null;
            Types.ModInfo modInfo = modInfoResult.ToObject<Types.ModInfo>();

            DynValue modInitResult = script.TryDoFile(modDirectory + "/modinit.lua", script.Globals, api);
            if(modInitResult == DynValue.Nil) return null;
            Types.ModInit modInit = modInitResult.ToObject<Types.ModInit>();

            foreach(Type type in AssemblyRegistration.globalTypes)
            {
                script.Globals[type.Name] = type;
            }

            script.Globals["api"] = api;

            helixTable.Clear();
            helixTable.Set("Log", DynValue.FromObject(script, new Types.Log(api)));
            helixTable.Set("Threads", DynValue.FromObject(script, new Types.Threads()));
            script.Globals["Helix"] = helixTable;

            foreach(var subDir in Directory.GetDirectories($"{modDirectory}/scripts/", "*", SearchOption.AllDirectories))
            {
                ((ScriptLoaderBase)script.Options.ScriptLoader).ModulePaths.Append($"{subDir}/?");
                ((ScriptLoaderBase)script.Options.ScriptLoader).ModulePaths.Append($"{subDir}/?.lua");
            }

            HelixMod helixMod = new()
            {
                api = api,
                script = script,
                modInfo = modInfo,
                modFolder = modDirectory,
                scriptsFolder = modDirectory + "/scripts",
                modInit = modInit
            };

            helixMods.Add(helixMod);

            api.Logger.Event("HELIX: Loaded " + modInfo?.name + ", " + modInfo?.version);

            return helixMod;
        }

        public void DebugPrint(string message)
        {
            api.Logger.Debug(message);
        }

        public void OnChanged(object sender, FileSystemEventArgs e)
        {
            if (e.ChangeType != WatcherChangeTypes.Changed)
            {
                return;
            }

            HelixMod helixMod = helixMods.Where(m => e.FullPath.Contains(Path.GetFileName(e.FullPath))).Single();
            
            List<string> parentDirectories = new();

            var moduleName = Path.GetFileNameWithoutExtension(e.Name);
            var prefix = GetModulePrefix(moduleName);

            if(prefix == null) return;

            switch(prefix)
            {
                case "cl_": if(helixMod.api.Side != EnumAppSide.Client) return; break;
                case "sv_": if(helixMod.api.Side != EnumAppSide.Server) return; break;
                case "sh_": break;
                default: return;
            }

            if(Path.GetDirectoryName(e.FullPath).EndsWith("scripts"))
            {
                helixMod.api.Logger.Error($"""
                Helix cannot reload files directly under helix_mod_name/scripts/ at runtime because it'd dupe your event hooks.
                You should instead create subdirectories for your initialization files to `require("subDirectory.moduleName")`.
                Files in subdirectories of scripts/ are FileWatched, and are hotloaded when they are saved.
                """);
                return;
            }


            Directory.SetCurrentDirectory(Path.GetDirectoryName(e.FullPath));

            parentDirectories.Add(Path.GetFileName(Directory.GetCurrentDirectory()));

            int i = 0;

            while(Directory.GetParent(Directory.GetCurrentDirectory()).FullName.EndsWith("scripts") == false && i != 10)
            {
                i++;
                parentDirectories.Add(Path.GetFileName(Path.GetDirectoryName(Directory.GetCurrentDirectory())));
                var parent = Directory.GetParent(Directory.GetCurrentDirectory()).FullName;
                Directory.SetCurrentDirectory(parent);
            }

            StringBuilder sb = new();

            foreach(string dir in parentDirectories)
            {
                sb.Append($"{dir}.");
            }

            string packageName = sb.ToString() + moduleName;
            
            helixMod.script.TryDoString($"if package.loaded[\"{packageName}\"] ~= nil then package.loaded[\"{packageName}\"] = nil; print(\"Reloading {packageName}\") end", helixMod.script.Globals, helixMod.api);
        }

        public string GetModulePrefix(string moduleName)
        {
            if(moduleName.StartsWith("cl_")) return "cl_";
            if(moduleName.StartsWith("sv_")) return "sv_";
            if(moduleName.StartsWith("sh_")) return "sh_";
            else return null;
        }

        public void OnCreated(object sender, FileSystemEventArgs e)
        {
            string value = $"Created: {e.FullPath}";
            Console.WriteLine(value);
        }

        public void OnDeleted(object sender, FileSystemEventArgs e) =>
            Console.WriteLine($"Deleted: {e.FullPath}");

        public void OnRenamed(object sender, RenamedEventArgs e)
        {
            Console.WriteLine($"Renamed:");
            Console.WriteLine($"    Old: {e.OldFullPath}");
            Console.WriteLine($"    New: {e.FullPath}");
        }
    }

    public struct HelixMod
    {
        public ICoreAPI api;
        public Script script;
        public Types.ModInfo modInfo;
        public ModInit modInit;
        public string modFolder;
        public string scriptsFolder;
        public FileSystemWatcher watcher;
    }
}