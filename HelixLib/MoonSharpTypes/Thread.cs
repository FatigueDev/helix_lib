using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public struct Thread
    {
        public DynValue thread;
        public string name;
        public string status;
    }
}