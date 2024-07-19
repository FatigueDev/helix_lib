using System.Text.Json.Serialization;
using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public class ModInfo
    {
        public string id = string.Empty;
        public string name = string.Empty;
        public string[] authors = new string[]{};
        public string description = string.Empty;
        public string version = string.Empty;
        public Dictionary<string, string> dependencies = new();
    }
}