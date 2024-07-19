using MoonSharp.Interpreter;
using Vintagestory.API.Common;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public class Log
    {
        [MoonSharpHidden]
        private ICoreAPI api;

        [MoonSharpHidden]
        public Log(ICoreAPI api)
        {
            this.api = api;
        }

        public void Json(string json)
        {
            var fixedJson = json.Replace("{", "{{").Replace("}", "}}");
            api.Logger.Debug(fixedJson);
        }
    }
}