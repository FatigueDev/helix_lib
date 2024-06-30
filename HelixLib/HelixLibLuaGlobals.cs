using HelixLib.Types;
using MoonSharp.Interpreter;

namespace HelixLib
{
    public class GlobalsRegister
    {
        public static void RegisterAll()
        {
            UserData.RegisterType<Types.Threads>();
            UserData.RegisterType<Types.Thread>();
            UserData.RegisterType<Types.Mod>();
            UserData.RegisterType<Types.GenericEventHook>();
            UserData.RegisterType<Types.EventClientside>();
            UserData.RegisterType<Types.EventServerside>();
            UserData.RegisterType<Types.EventShared>();
        }
    }
}