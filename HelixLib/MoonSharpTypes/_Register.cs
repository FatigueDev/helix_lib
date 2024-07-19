using HelixLib.Types;
using MoonSharp.Interpreter;
using Namotion.Reflection;
using Vintagestory.API.Util;

namespace HelixLib.Types
{
    public static class Register
    {
        public static void RegisterAll()
        {
            RegisterAction<float>();
            RegisterModInfo();
            RegisterModInit();

            UserData.RegisterType<Types.ModInfo>();
            UserData.RegisterType<Types.ModInit>();
            UserData.RegisterType<Types.Thread>();
            UserData.RegisterType<Types.Threads>();
            UserData.RegisterType<Types.Log>();
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

        public static void RegisterModInfo()
        {
            Script.GlobalOptions.CustomConverters.SetScriptToClrCustomConversion(DataType.Table, typeof(Types.ModInfo),
            val =>
            {
                Types.ModInfo result = new();
                
                result.id = val.Table.Get("id").String;
                result.name = val.Table.Get("name").String;
                result.description = val.Table.Get("description").String;
                result.authors = val.Table.Get("authors").Table.Values.Select(v => v.String).ToArray();
                val.Table.Get("dependencies").Table.Pairs.Foreach(v => result.dependencies.Add(v.Key.String, v.Value.String));
                result.version = val.Table.Get("version").String;

                return result;
            });
        }

        public static void RegisterModInit()
        {
            Script.GlobalOptions.CustomConverters.SetScriptToClrCustomConversion(DataType.Table, typeof(Types.ModInit),
            val =>
            {
                Types.ModInit result = new()
                {
                    startPre = new List<DynValue>(),
                    start = new List<DynValue>(),
                    startServerside = new List<DynValue>(),
                    startClientside = new List<DynValue>(),
                    assetsLoaded = new List<DynValue>(),
                    assetsFinalized = new List<DynValue>()
                };

                if (val.Table.Get("startPre") != DynValue.Nil)
                {
                    result.startPre = val.Table.Get("startPre").Table.Values.ToList();
                }

                if(val.Table.Get("start") != DynValue.Nil)
                {
                    result.start = val.Table.Get("start").Table.Values.ToList();                    
                }

                if(val.Table.Get("startClientside") != DynValue.Nil)
                {
                    result.startClientside = val.Table.Get("startClientside").Table.Values.ToList();                    
                }

                if(val.Table.Get("startServerside") != DynValue.Nil)
                {
                    result.startServerside = val.Table.Get("startServerside").Table.Values.ToList();                    
                }

                if(val.Table.Get("assetsLoaded") != DynValue.Nil)
                {
                    result.assetsLoaded = val.Table.Get("assetsLoaded").Table.Values.ToList();                    
                }

                if(val.Table.Get("assetsFinalized") != DynValue.Nil)
                {
                    result.assetsFinalized = val.Table.Get("assetsFinalized").Table.Values.ToList();                    
                }

                return result;
            });
        }
    }
}