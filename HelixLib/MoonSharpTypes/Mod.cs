using System.Text.Json.Serialization;
using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [Serializable]
    [MoonSharpUserData]
    public class Mod
    {
        public string id;
        public string name;
        public string[] authors;
        public string description;
        public string version;
        public Dictionary<string, string> dependencies = new();
        public Dictionary<GenericEventHook, List<DynValue>> genericEventHooks = new();
        public Dictionary<EventClientside, List<DynValue>> clientEventHooks = new();
        public Dictionary<EventServerside, List<DynValue>> serverEventHooks = new();
        public Dictionary<EventShared, List<DynValue>> sharedEventHooks = new();
    }
}