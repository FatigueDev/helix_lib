using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public class Helix
    {
        public Log Log;
        public ModInfo ModInfo;
        public ModInit ModInit;
        public Threads Threads;
        public Thread thread;
    }
}