using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public class ModInit
    {
        public IEnumerable<DynValue> startPre;
        public IEnumerable<DynValue> start;
        public IEnumerable<DynValue> startClientside;
        public IEnumerable<DynValue> startServerside;
        public IEnumerable<DynValue> assetsLoaded;
        public IEnumerable<DynValue> assetsFinalized;
    }
}