using System.Reflection;
using System.Text;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Interop;
using Namotion.Reflection;
using Vintagestory.API.Common;
using Vintagestory.API.Util;

namespace HelixLib
{
    public class AssemblyRegistration
    {
        [Flags]
        public enum EnumTypeFlags
        {
            ABSTRACT = 0,
            ARRAY = 1 << 1,
            CLASS = 1 << 2,
            COLLECTIBLE = 1 << 3,
            CONTRUCTED_GENERIC_TYPE = 1 << 4,
            ENUM = 1 << 5,
            GENERIC_METHOD_PARAMETER = 1 << 6,
            GENERIC_PARAMETER = 1 << 7,
            GENERIC_TYPE = 1 << 8,
            GENERIC_TYPE_DEFINITION = 1 << 9,
            GENERIC_TYPE_PARAMETER = 1 << 10,
            INTERFACE = 1 << 11,
            PUBLIC = 1 << 12,
            NOT_PUBLIC = 1 << 13,
            SEALED = 1 << 14,
            SERIALIZABLE = 1 << 15,
            TYPE_DEFINITION = 1 << 16,
            VALUE_TYPE = 1 << 17,
            VISIBLE = 1 << 18
        }

        public static void Register(ICoreAPI api, bool outputAnnotations = false)
        {
            UserData.RegistrationPolicy = InteropRegistrationPolicy.Default;
            UserData.DefaultAccessMode = InteropAccessMode.Hardwired;

            GlobalsRegister.RegisterAll();
            MoonSharpTypeConversions.RegisterAll();

            RegisterVintageStoryAssemblies(api, outputAnnotations);
        }

        public static Assembly GetAssemblyByName(string assemblyName)
        {
            return AppDomain.CurrentDomain.GetAssemblies().
                SingleOrDefault(assembly => assembly.GetName().Name == assemblyName);
        }

        public struct AssemblyDescriptorGrouping
        {
            public Assembly Assembly;
            public IUserDataDescriptor UserDataDescriptor;

            public AssemblyDescriptorGrouping(Assembly assembly, IUserDataDescriptor userDataDescriptor)
            {
                Assembly = assembly;
                UserDataDescriptor = userDataDescriptor;
            }
        }

        public static void RegisterVintageStoryAssemblies(ICoreAPI api, bool outputAnnotations = false)
        {
            List<AssemblyDescriptorGrouping> assemblyDescriptors = new();
            List<IUserDataDescriptor> buffer = new();
            List<IUserDataDescriptor> userDataDescriptors = new();

            List<Assembly> vintageStoryAssemblies = new()
            {
                GetAssemblyByName("VintagestoryAPI"),
                GetAssemblyByName("VintagestoryLib")
            };

            foreach(Assembly asm in vintageStoryAssemblies)
            {
                UserData.RegisterAssembly(asm, true);

                api.Logger.Event($"HELIX: Registered assembly - {asm.GetName().Name}");

                foreach(Type type in asm.GetTypes())
                {
                    if(UserData.IsTypeRegistered(type)) continue;

                    var regType = UserData.RegisterType(type, InteropAccessMode.Hardwired);
                    assemblyDescriptors.Add(new AssemblyDescriptorGrouping(asm, regType));
                }
            }

            if(outputAnnotations == false) return;

            StringBuilder sb = new();
            var folderPath = api.GetOrCreateDataPath($"{api.DataBasePath}/ModConfig/helix/");

            foreach(AssemblyDescriptorGrouping sd in assemblyDescriptors)
            {
                var assembly = sd.Assembly;
                var desc = sd.UserDataDescriptor;

                var typeFlags = CalculateFlagsForType(desc.Type);

                if(typeFlags.HasFlag(EnumTypeFlags.NOT_PUBLIC)) continue;

                sb.AppendLine($"---@meta");
                sb.AppendLine();

                if(typeFlags.HasFlag(EnumTypeFlags.CLASS) || typeFlags.HasFlag(EnumTypeFlags.INTERFACE))
                {
                    var typesImplementingInterface = TypesImplementingInterface(desc.Type);
                    var typesThatMatchBaseType = from ti in typesImplementingInterface
                                                where desc.Type.Name != ti.Name
                                                where ti.Name != "Object"
                                                group ti by ti.Name into t
                                                from final in t
                                                select final.Name;

                    string fmtBaseType = "";

                    if(string.IsNullOrWhiteSpace(desc.Type.BaseType?.Name) == false && desc.Type.BaseType?.Name != "Object")
                    {
                        fmtBaseType += $": {desc.Type.BaseType?.Name}";

                        foreach(string inheritance in typesThatMatchBaseType)
                        {
                            fmtBaseType += $", {inheritance}";
                        }
                    }
                    else
                    {                        
                        foreach(string inheritance in typesThatMatchBaseType)
                        {
                            if(typesThatMatchBaseType.First() == inheritance)
                            {
                                fmtBaseType += ": ";
                            }
                            else
                            {
                                fmtBaseType += ",";
                            }
                            fmtBaseType += $" {inheritance}";
                        }
                    }
                    
                    var classSummary = desc.Type.GetXmlDocsSummary();
                    
                    if(string.IsNullOrWhiteSpace(classSummary) == false)
                    {
                        sb.AppendLine($"-- {classSummary.Replace("\n", " ")}");
                    }

                    sb.AppendLine($"---@class {desc.Type.Name}{fmtBaseType}");

                    var constructors = desc.Type.GetConstructors();
                    var methods = desc.Type.GetMethods();
                    var members = desc.Type.GetMembers();
                    CreateAnnotationsForMembers(ref sb, members);
                    sb.AppendLine($"{desc.Type.Name} = {{}}");
                    
                    sb.AppendLine();

                    CreateAnnotationsForConstructors(ref sb, constructors, desc.Type);

                    sb.AppendLine();

                    CreateAnnotationsForMethods(ref sb, methods, desc.Type);

                    // sb.AppendLine($"return {desc.Type.Name}");
                    
                }
                else if(typeFlags.HasFlag(EnumTypeFlags.ENUM))
                {
                    sb.AppendLine($"---@enum {desc.Type.Name}");
                    sb.AppendLine($"{desc.Type.Name} = {{");      

                    var enumNames = desc.Type.GetEnumNames();
                    var enumValues = desc.Type.GetEnumValues();
                    CreateAnnotationsForEnum(ref sb, enumNames, enumValues);

                    // sb.AppendLine($"return {desc.Type.Name}");
                }
                
                Directory.CreateDirectory(folderPath + $"/{assembly.GetName().Name}");
                File.WriteAllText(folderPath + $"/{assembly.GetName().Name}/{desc.Type.Name}.lua", sb.ToString());
                
                sb.Clear();
            }
            api.Logger.Event("HELIX: Outputted annotations to VintagestoryData/ModConfig/helix/");
        }

        /// <summary>
        /// Returns all types in the current AppDomain implementing the interface or inheriting the type. 
        /// </summary>
        public static IEnumerable<Type> TypesImplementingInterface(Type desiredType)
        {
            return AppDomain
                .CurrentDomain
                .GetAssemblies()
                .SelectMany(assembly => assembly.GetTypes())
                .Where(type => desiredType.IsAssignableTo(type));
        }

        public static void CreateAnnotationsForConstructors(ref StringBuilder sb, ConstructorInfo[] constructorInfos, Type createdBy)
        {
            foreach(ConstructorInfo info in constructorInfos)
            {
                var parameters = info.GetParameters();

                CreateAnnotationsForParametersAsFieldAnnotations(ref sb, parameters);

                sb.AppendLine($"---@return {createdBy.Name}");
                sb.Append($"function {createdBy.Name}.ctor(");
                CreateAnnotationsForParameters(ref sb, parameters);
                sb.Append(") end");

                sb.AppendLine();
            }
        }

        public static void CreateAnnotationsForMethods(ref StringBuilder sb, MethodInfo[] methodInfos, Type createdBy)
        {
            foreach(MethodInfo info in methodInfos)
            {
                var parameters = info.GetParameters();

                var methodSummary = info.GetXmlDocsSummary();

                if(string.IsNullOrWhiteSpace(methodSummary) == false)
                {
                    if(methodSummary.Contains("\n"))
                    {
                        foreach(string line in methodSummary.Split("\n"))
                        {
                            sb.AppendLine($"-- {line}");
                        }
                    }
                    else
                    {
                        sb.AppendLine($"-- {methodSummary}");
                    }
                }

                CreateAnnotationsForParametersAsFieldAnnotations(ref sb, parameters);

                if(info.ReturnType.Name != "Void")
                {
                    var returnSummary = info.ReturnType.GetXmlDocsSummary().Replace("\n", " ");
                    if(returnSummary != string.Empty)
                        sb.AppendLine($"---@return {TypeToLuaTypeString(info.ReturnType)} # {returnSummary}");
                    else
                        sb.AppendLine($"---@return {TypeToLuaTypeString(info.ReturnType)}");
                }

                sb.Append($"function {createdBy.Name}.{info.Name}(");
                CreateAnnotationsForParameters(ref sb, parameters);
                sb.Append(") end");

                sb.AppendLine();
                sb.AppendLine();
            }
            
            sb.AppendLine();
        }

        public static void CreateAnnotationsForParametersAsFieldAnnotations(ref StringBuilder sb, ParameterInfo[] parameterInfos)
        {
            foreach(var param in parameterInfos)
            {
                var nameFmt = string.IsNullOrWhiteSpace(param.Name) ? "value" : param.Name;
                nameFmt += param.IsOptional ? "?" : "";
                
                sb.Append($"---@param {nameFmt} {TypeToLuaTypeString(param.ParameterType)}");

                var paramSummary = param.ToContextualParameter().ParameterType.GetXmlDocsSummary();

                if(string.IsNullOrWhiteSpace(paramSummary) == false)
                {
                    sb.Append($" {paramSummary.Replace("\n", " ")}");
                }

                sb.AppendLine();
            }
        }

        public static void CreateAnnotationsForParameters(ref StringBuilder sb, ParameterInfo[] parameterInfos)
        {
            if(parameterInfos.Any())
            {
                foreach(var param in parameterInfos)
                {
                    var nameFmt = string.IsNullOrWhiteSpace(param.Name) ? "value" : param.Name;

                    if(parameterInfos.IndexOf(param) == parameterInfos.IndexOf(parameterInfos.Last()))
                    {      
                        sb.Append($"{nameFmt}");
                    }
                    else
                    {
                        sb.Append($"{nameFmt}, ");
                    }
                }
            }
        }

        public static void CreateAnnotationsForMembers(ref StringBuilder sb, IEnumerable<MemberInfo> memberInfos)
        {
            foreach(MemberInfo info in memberInfos)
            {
                if(info.MemberType == MemberTypes.Constructor) continue;
                if(info.MemberType == MemberTypes.Method) continue;

                Type? memberType;

                switch (info.MemberType)
                {
                    case MemberTypes.Event: memberType = ((EventInfo)info).EventHandlerType; break;
                    case MemberTypes.Field: memberType = ((FieldInfo)info).FieldType; break;
                    case MemberTypes.Method: memberType = ((MethodInfo)info).ReturnType; break;
                    case MemberTypes.Property: memberType = ((PropertyInfo)info).PropertyType; break;
                    default: memberType = null; break;
                }

                if(memberType != null)
                    sb.Append($"---@field {info.Name} {TypeToLuaTypeString(memberType)}");
                else
                    sb.Append($"---@field {info.Name} nil");

                var memberSummary = info.GetXmlDocsSummary();

                if(string.IsNullOrWhiteSpace(memberSummary) == false)
                {
                    if(memberSummary.Contains("\n"))
                    {
                        foreach(string line in memberSummary.Split("\n"))
                        {
                            sb.Append($" {line}");
                        }
                    }
                    else
                    {
                        sb.Append($" {memberSummary}");
                    }
                }          
                sb.AppendLine();      
            }
        }

        public static void CreateAnnotationsForEnum(ref StringBuilder sb, string[] enumKeys, Array enumValues)
        {
            for(int i = 0; i < enumKeys.Count(); i++)
            {
                var value = enumValues.GetValue(i);
                object underlyingValue = Convert.ChangeType(value, Enum.GetUnderlyingType(value.GetType()));

                if(enumKeys[i] != enumKeys.Last())
                {
                    sb.AppendLine($"\t{enumKeys[i]} = {underlyingValue},");
                }
                else
                {
                    sb.AppendLine($"\t{enumKeys[i]} = {underlyingValue}\n}}");
                }
            }
        }

        public static string TypeToLuaTypeString(Type type)
        {
            var name = type.Name;

            string strNumber = "number";
            string strBoolean = "boolean";
            string strString = "string";
            string strFunction = "function";
            string strUserdata = "userdata";
            string strTable = "table";
            string strIterator = "iterator";

            if(name.StartsWith("SByte")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Byte")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Int16")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("UInt16")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Int32")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("UInt32")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Int64")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("UInt64")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Single")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Decimal")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Double")) 
            {
                name = strNumber;
            }

            if(name.StartsWith("Boolean")) 
            {
                name = strBoolean;
            }

            if(name.StartsWith("String")) 
            {
                name = strString;
            }

            if(name.StartsWith("StringBuilder")) 
            {
                name = strString;
            }

            if(name.StartsWith("Char")) 
            {
                name = strString;
            }

            if(name.StartsWith("Delegate")) 
            {
                name = strFunction;
            }

            if(name.StartsWith("Object")) 
            {
                name = strUserdata;
            }

            if(name.StartsWith("Type")) 
            {
                name = strUserdata;
            }

            if(name.StartsWith("MethodInfo")) 
            {
                name = strFunction;
            }

            if(name.StartsWith("Action")) 
            {
                name = strFunction;
            }

            if(name.StartsWith("List")) 
            {
                name = strTable;
            }

            if(name.StartsWith("Dictionary")) 
            {
                name = strTable;
            }

            if(name.StartsWith("IEnumerable")) 
            {
                name = strFunction;
            }

            if(name.StartsWith("IEnumerator")) 
            {
                name = strFunction;
            }
            
            return name;
        }

        public static EnumTypeFlags CalculateFlagsForType(Type type)
        {
            EnumTypeFlags typeFlags = new EnumTypeFlags();

            if(type.IsAbstract) typeFlags = typeFlags | EnumTypeFlags.ABSTRACT;
            if(type.IsArray) typeFlags = typeFlags | EnumTypeFlags.ARRAY;
            if(type.IsClass) typeFlags = typeFlags | EnumTypeFlags.CLASS;
            if(type.IsCollectible) typeFlags = typeFlags | EnumTypeFlags.COLLECTIBLE;
            if(type.IsConstructedGenericType) typeFlags = typeFlags | EnumTypeFlags.CONTRUCTED_GENERIC_TYPE;
            if(type.IsEnum) typeFlags = typeFlags | EnumTypeFlags.ENUM;
            if(type.IsGenericMethodParameter) typeFlags = typeFlags | EnumTypeFlags.GENERIC_METHOD_PARAMETER;
            if(type.IsGenericParameter) typeFlags = typeFlags | EnumTypeFlags.GENERIC_PARAMETER;
            if(type.IsGenericType) typeFlags = typeFlags | EnumTypeFlags.GENERIC_TYPE;
            if(type.IsGenericTypeDefinition) typeFlags = typeFlags | EnumTypeFlags.GENERIC_TYPE_DEFINITION;
            if(type.IsGenericTypeParameter) typeFlags = typeFlags | EnumTypeFlags.GENERIC_TYPE_PARAMETER;
            if(type.IsInterface) typeFlags = typeFlags | EnumTypeFlags.INTERFACE;
            if(type.IsNotPublic) typeFlags = typeFlags | EnumTypeFlags.NOT_PUBLIC;
            if(type.IsPublic) typeFlags = typeFlags | EnumTypeFlags.PUBLIC;
            if(type.IsSealed) typeFlags = typeFlags | EnumTypeFlags.SEALED;
            if(type.IsSerializable) typeFlags = typeFlags | EnumTypeFlags.SERIALIZABLE;
            if(type.IsTypeDefinition) typeFlags = typeFlags | EnumTypeFlags.TYPE_DEFINITION;
            if(type.IsValueType) typeFlags = typeFlags | EnumTypeFlags.VALUE_TYPE;
            if(type.IsVisible) typeFlags = typeFlags | EnumTypeFlags.VISIBLE;

            if(typeFlags == new EnumTypeFlags())
            {
                throw new TypeLoadException($"The loaded type is _fucked_: {type.Name}");
            }

            return typeFlags;

        }
    }
}