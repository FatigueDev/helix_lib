using HelixLib.Types;
using MoonSharp.Interpreter;
using Namotion.Reflection;
using Vintagestory.API.Util;

namespace HelixLib
{
    public static class MoonSharpTypeConversions
    {
        public static void RegisterAll()
        {
            RegisterAction<float>();
            RegisterHelixMod();
        }

        public static void RegisterAction<T>()
        {
            Script.GlobalOptions.CustomConverters.SetScriptToClrCustomConversion(DataType.Function, typeof(Action<T>),
            v => 
            {
                var function = v.Function;
                return (Action<T>) ((T) => function.Call());
            });
        }

        public static void RegisterHelixMod()
        {
            Script.GlobalOptions.CustomConverters.SetScriptToClrCustomConversion(DataType.Table, typeof(Types.Mod),
            val =>
            {
                Types.Mod result = new();
                
                result.id = val.Table.Get("id").String;
                result.name = val.Table.Get("name").String;
                result.description = val.Table.Get("description").String;
                result.authors = val.Table.Get("authors").Table.Values.Select(v => v.String).ToArray();
                val.Table.Get("dependencies").Table.Pairs.Foreach(v => result.dependencies.Add(v.Key.String, v.Value.String));
                result.version = val.Table.Get("version").String;
                
                if(val.Table.Get("genericEventHooks") != DynValue.Nil)
                {
                    val.Table.Get("genericEventHooks").Table.Pairs.Foreach(v => 
                    {
                        var eventType = (GenericEventHook)Enum.Parse(typeof(GenericEventHook), v.Key.UserData.Object.ToString());
                        result.genericEventHooks.Add(eventType, v.Value.Table.Values.ToList());
                    });
                }

                if(val.Table.Get("clientEventHooks") != DynValue.Nil)
                {
                    val.Table.Get("clientEventHooks").Table.Pairs.Foreach(v => 
                    {
                        var eventType = (EventClientside)Enum.Parse(typeof(EventClientside), v.Key.UserData.Object.ToString());
                        result.clientEventHooks.Add(eventType, v.Value.Table.Values.ToList());
                    });
                }

                if(val.Table.Get("serverEventHooks") != DynValue.Nil)
                {
                    val.Table.Get("serverEventHooks").Table.Pairs.Foreach(v => 
                    {
                        var eventType = (EventServerside)Enum.Parse(typeof(EventServerside), v.Key.UserData.Object.ToString());
                        result.serverEventHooks.Add(eventType, v.Value.Table.Values.ToList());
                    });
                }

                if(val.Table.Get("sharedEventHooks") != DynValue.Nil)
                {
                    val.Table.Get("sharedEventHooks").Table.Pairs.Foreach(v => 
                    {
                        var eventType = (EventShared)Enum.Parse(typeof(EventShared), v.Key.UserData.Object.ToString());
                        result.sharedEventHooks.Add(eventType, v.Value.Table.Values.ToList());
                    });
                }

                return result;
            });
        }
    }
}