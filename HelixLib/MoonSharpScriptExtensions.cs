using MoonSharp.Interpreter;
using Vintagestory.API.Common;

namespace HelixLib
{
    public static class MoonSharpScriptExtensions
    {
        /// <summary>
        /// Script DoFile with a try/catch block to log ScriptRuntimeExceptions if the file fails
        /// </summary>
        /// <param name="script"></param>
        /// <param name="fileName"></param>
        /// <param name="api">ICoreAPI | ICoreClientAPI | ICoreServerAPI; used for logging in case of exception</param>
        /// <returns></returns>
        public static DynValue TryDoFile(this Script script, string fileName, Table globalContext, ICoreAPI api)
        {
            try
            {
                return script.DoFile(fileName, globalContext);
            }
            catch(ScriptRuntimeException e)
            {
                api.Logger.Error(e.DecoratedMessage);
                return DynValue.Nil;
            }
        }

        public static DynValue TryDoString(this Script script, string code, Table globalContext, ICoreAPI api)
        {
            try
            {
                return script.DoString(code, globalContext);
            }
            catch(ScriptRuntimeException e)
            {
                api.Logger.Error(e.DecoratedMessage);
                return DynValue.Nil;
            }
        }
    }
}