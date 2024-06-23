using System.Reflection;
using System.Text;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Interop;
using Vintagestory;
using Vintagestory.Common;
using Vintagestory.API.Common;
using Vintagestory.API.Server;
using Vintagestory.API.Client;
using Vintagestory.API.Util;
using VintagestoryLib;
using VintagestoryLib.Common;
using HarmonyLib;
using MoonSharp.Interpreter.Interop.BasicDescriptors;
using MoonSharp.Interpreter.Interop.StandardDescriptors.HardwiredDescriptors;
using System.ComponentModel;
using MoonSharp.Interpreter.Interop.RegistrationPolicies;
using MoonSharp.Interpreter.Serialization.Json;
using Vintagestory.Client.NoObf;

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

        public static void RegisterAllAssemblies()
        {
            // Do nothing tee hee
        }

        public static void RegisterAllAssemblies(ICoreAPI api)
        {
            UserData.RegistrationPolicy = InteropRegistrationPolicy.Automatic;
            UserData.DefaultAccessMode = InteropAccessMode.Hardwired;

            // These three lines will generate your LuaLS type definitions. Just uncomment them and join a singleplayer world.
            //var folderPath = api.GetOrCreateDataPath($"{api.DataBasePath}/ModConfig/helix/");
            //SaveRegisteredAssemblyDescriptors(folderPath, api);
            //api.Logger.Event("HELIX: Outputted file to modconfig");
        }

        // public static void OutputAllTheDefinitions(ICoreAPI api)
        // {
        //     var typeAssemblyList = GetRegisteredTypes();

        //     api.Logger.Event($"HELIX: Type classes contains {typeAssemblyList.Count} elements.");

        //     List<Tuple<string, StringBuilder>> stringBuilders = new();

        //     foreach(var typeClass in typeAssemblyList)
        //     {
        //         api.Logger.Event($"HELIX: Found {typeClass.Assembly}");

        //         StringBuilder sb = new();

        //         sb.AppendLine($"---@meta {typeClass.Assembly}");

        //         foreach(var classStruct in typeClass.Classes)
        //         {

        //             string className = classStruct.Name;
        //             className = className.Replace("`1", "");
        //             className = className.Replace("`2", "");
        //             className = className.Replace("`3", "");
                    
        //             api.Logger.Event($"HELIX: String building {className}");

        //             sb.Append('\n');
        //             var classFormat = string.IsNullOrEmpty(classStruct.Inherits) == false ? $"{className}: {classStruct.Inherits}" : className;
        //             sb.AppendLine($"---@class {classFormat}");

        //             foreach(var method in classStruct.ClassMethods)
        //             {
        //                 sb.Append($"---@field ");

        //                 if(method.IsPublic == false)
        //                 {
        //                     sb.Append("private ");
        //                 }
                        
        //                 sb.Append($"{method.Name} fun(");

        //                 foreach(ClassMethodParameterStruct param in method.Parameters)
        //                 {
        //                     bool isLastParameter = param.GetType() == method.Parameters.Last().GetType();
        //                     var paramNameFormat = param.IsOptional ? param.Name + "?" : param.Name;
                            
        //                     if(string.IsNullOrEmpty(param.Name) == false)
        //                     {
        //                         if(isLastParameter)
        //                         {
        //                             sb.Append($"{paramNameFormat}: {param.Type.Name}");
        //                         }
        //                         else
        //                         {
        //                             sb.Append($"{paramNameFormat}: {param.Type.Name}, ");
        //                         }
        //                     }
        //                     else
        //                     {
        //                          if(isLastParameter)
        //                         {
        //                             sb.Append($"anon: {param.Type.Name}");
        //                         }
        //                         else
        //                         {
        //                             sb.Append($"anon: {param.Type.Name}, ");
        //                         }
        //                     }
        //                 }

        //                 sb.Append(')');

        //                 if(method.ReturnType != typeof(void))
        //                 {
        //                     sb.Append($": {method.ReturnType.Name}");
        //                 }
        //                 sb.Append('\n');
        //             }

        //             // foreach(var member in classStruct.ClassMembers)
        //             // {
        //             //     sb.Append($"---@field {member.Name} {member.Type}");
        //             //     sb.Append('\n');
        //             // }                    

        //             foreach(var field in classStruct.ClassFields)
        //             {
        //                 sb.Append($"---@field ");
        //                 if(field.IsPublic == false)
        //                 {
        //                     sb.Append("private ");
        //                 }
        //                 sb.Append($"{field.Name} {field.Type.Name}");
        //                 sb.Append('\n');
        //             }

        //             sb.AppendLine($"{className} = {"{}"}");

        //             stringBuilders.Add(new Tuple<string, StringBuilder>(className, sb));
        //         }
        //     }
            
        //     foreach(var classAndStringBuilder in stringBuilders)
        //     {
        //         api.Logger.Event($"HELIX: Trying to write {classAndStringBuilder.Item1}");
        //         var folderPath = api.GetOrCreateDataPath($"{api.DataBasePath}/ModConfig/helix/");
        //         // api.StoreModConfig(classAndStringBuilder.Item2.ToString(), folderPath + $"/{classAndStringBuilder.Item1}.lua");
        //         File.WriteAllText(folderPath + $"/{classAndStringBuilder.Item1}.lua", classAndStringBuilder.Item2.ToString());
        //     }
        // }

        // public struct AssemblyTypeStruct
        // {
        //     public Assembly Assembly;
        //     public Type Type;
        //     public List<ClassStruct> Classes;
        // }

        // public struct ClassStruct
        // {
        //     public bool IsInterface;
        //     public bool IsPublic;
        //     public string Inherits;
        //     public string Name;
        //     public Assembly Assembly;
        //     public IEnumerable<ClassMemberStruct> ClassMembers;
        //     public IEnumerable<ClassMethodStruct> ClassMethods;
        //     public IEnumerable<ClassFieldStruct> ClassFields;
        // }

        // public struct ClassMemberStruct
        // {
        //     public string Type;
        //     public string Name;
        // }

        // public struct ClassMethodStruct
        // {            
        //     public bool IsPublic;
        //     public Type ReturnType;
        //     public IEnumerable<ClassMethodParameterStruct> Parameters;
        //     public string Name;
        // }

        // public struct ClassMethodParameterStruct
        // {
        //     public bool IsOptional;
        //     public Type Type;
        //     public string? Name;
        // }

        // public struct ClassFieldStruct
        // {
        //     public bool IsPublic;
        //     public Type Type;
        //     public string? Name;
        // }

        public static void SaveRegisteredAssemblyDescriptors(string folderPath, ICoreAPI api)
        {
            List<IUserDataDescriptor> buffer = new();
            List<IUserDataDescriptor> userDataDescriptors = new();

            foreach(Assembly asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if(asm.GetName().ToString().Contains("Vintagestory"))
                {
                    api.Logger.Event($"HELIX: Found assembly with name {asm.GetName()}");

                    UserData.RegisterAssembly(asm, true);

                    foreach(Type type in asm.GetTypes())
                    {
                        if(UserData.IsTypeRegistered(type)) continue;

                        var regType = UserData.RegisterType(type, InteropAccessMode.Hardwired);
                        buffer.Add(regType);
                        userDataDescriptors.Add(regType);
                    }

                    foreach(var userDataDescriptor in buffer)
                    {
                        foreach(Type nestedType in userDataDescriptor.Type.GetAllImplementedTypes())
                        {
                            if(UserData.IsTypeRegistered(nestedType)) continue;

                            userDataDescriptors.Add(UserData.RegisterType(nestedType, InteropAccessMode.Hardwired));
                        }
                    }
                }                
            }

            StringBuilder sb = new();

            foreach(IUserDataDescriptor desc in userDataDescriptors)
            {
                var typeFlags = CalculateFlagsForType(desc.Type);
                if(typeFlags.HasFlag(EnumTypeFlags.NOT_PUBLIC)) continue;

                sb.AppendLine($"---@meta {desc.Type.Name}");

                if(typeFlags.HasFlag(EnumTypeFlags.CLASS) || typeFlags.HasFlag(EnumTypeFlags.INTERFACE))
                {
                    var fmtBaseType = desc.Type.BaseType == null ? "" : $": {desc.Type.BaseType.Name}";
                    sb.AppendLine($"---@class {desc.Type.Name}{fmtBaseType}");

                    var constructors = desc.Type.GetConstructors();
                    var methods = desc.Type.GetMethods();
                    var members = desc.Type.GetMembers();
                    CreateAnnotationsForConstructors(ref sb, constructors);
                    CreateAnnotationsForMethods(ref sb, methods);
                    CreateAnnotationsForMembers(ref sb, members);
                    sb.AppendLine($"{desc.Type.Name} = {{}}");
                }
                else if(typeFlags.HasFlag(EnumTypeFlags.ENUM))
                {
                    sb.AppendLine($"---@enum {desc.Type.Name}");
                    sb.AppendLine($"{desc.Type.Name} = {{");      

                    var enumNames = desc.Type.GetEnumNames();
                    var enumValues = desc.Type.GetEnumValues();
                    CreateAnnotationsForEnum(ref sb, enumNames, enumValues);
                }
                
                File.WriteAllText(folderPath + $"/luals_{desc.Type.Name}.lua", sb.ToString());
                sb.Clear();
            }

        }

        public static void CreateAnnotationsForConstructors(ref StringBuilder sb, ConstructorInfo[] constructorInfos)
        {
            bool overloadedConstructor = false;
            List<string> pastNames = new();;

            foreach(ConstructorInfo info in constructorInfos)
            {
                var parameters = info.GetParameters();

                if(!pastNames.Contains(info.Name))
                {
                    overloadedConstructor = false;
                    pastNames.Add(info.Name);
                }

                bool hasOverloads = constructorInfos.Where(ci => ci.Name == info.Name).Count() > 1;

                if(hasOverloads && !overloadedConstructor)
                {
                    sb.Append($"---@field ctor fun(");
                    overloadedConstructor = true;
                }
                else if(hasOverloads && overloadedConstructor)
                {
                    sb.Append($"---@overload fun(");
                }
                else if(!hasOverloads)
                {
                    sb.Append($"---@field ctor fun(");
                }

                CreateAnnotationsForParameters(ref sb, parameters);

                sb.Append($"): {info.DeclaringType?.Name}");

                sb.AppendLine();
            }
        }

        public static void CreateAnnotationsForMethods(ref StringBuilder sb, MethodInfo[] methodInfos)
        {
            bool overloadedConstructor = false;
            List<string> pastNames = new();

            foreach(MethodInfo info in methodInfos)
            {
                

                var parameters = info.GetParameters();

                if(!pastNames.Contains(info.Name))
                {
                    overloadedConstructor = false;
                    pastNames.Add(info.Name);
                }

                bool hasOverloads = methodInfos.Where(ci => ci.Name == info.Name).Count() > 1;

                if(hasOverloads && !overloadedConstructor)
                {
                    sb.Append($"---@field {info.Name} fun(");
                    overloadedConstructor = true;
                }
                else if(hasOverloads && overloadedConstructor)
                {
                    sb.Append($"---@overload fun(");
                }
                else if(!hasOverloads)
                {
                    sb.Append($"---@field {info.Name} fun(");
                }
                
                CreateAnnotationsForParameters(ref sb, parameters);
                
                sb.Append($"): {TypeToLuaTypeString(info.ReturnType.Name)}");

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
                        sb.Append($"{nameFmt}: {TypeToLuaTypeString(param.ParameterType.Name)}");
                    }
                    else
                    {
                        sb.Append($"{nameFmt}: {TypeToLuaTypeString(param.ParameterType.Name)}, ");
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

                var property = info.ReflectedType?.GetProperties().FirstOrDefault();

                if(property == null)
                {
                    continue;
                }

                sb.AppendLine($"---@field {info.Name} {TypeToLuaTypeString(property.PropertyType.Name)}");
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
        public static string TypeToLuaTypeString(string typeName)
        {
            if(typeName.Contains("String")) typeName = typeName.Replace("String", "string");
            if(typeName.Contains("Int32")) typeName = typeName.Replace("Int32", "number");
            if(typeName.Contains("UInt32")) typeName = typeName.Replace("UInt32", "number");
            if(typeName.Contains("Boolean")) typeName = typeName.Replace("Boolean", "boolean");
            if(typeName.Contains("Object"))  typeName = typeName.Replace("Object", "table");
            if(typeName.Contains("Void")) typeName = typeName.Replace("Void", "nil");
            if(typeName.Contains("Type")) typeName = typeName.Replace("Type", "any");
            if(typeName.Contains("Action`1")) typeName = typeName.Replace("Action", "any");
            if(typeName.Contains("Byte")) typeName = typeName.Replace("Byte", "number");
            if(typeName.Contains("Dictionary`2")) typeName = typeName.Replace("Dictionary`2", "table<any, any>");
            if(typeName.Contains("List`1")) typeName = typeName.Replace("List`1", "any[]");
            if(typeName.Contains("IEnumerable`1")) typeName = typeName.Replace("IEnumerable`1", "any[]");
            if(typeName.Contains("Collection`1")) typeName = typeName.Replace("Collection`1", "any[]");
            if(typeName.Contains("Func`2")) typeName = typeName.Replace("Func`2", "fun(outResult: any): any");

            return typeName;
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

        

        // public static List<AssemblyTypeStruct> GetRegisteredTypes()
        // {
        //     List<AssemblyTypeStruct> assemblyTypeStructs = new();

        //     List<Type> addedTypes = new();

        //     foreach(Type type in UserData.GetRegisteredTypes())
        //     {
        //         GetNestedTypes(ref addedTypes, ref assemblyTypeStructs, type);
        //     }


        //     // foreach(AssemblyTypeStruct type in typeList)
        //     // {
        //     //     // if(addedTypes.Select(t=>t.Type).Contains(type.Type)) continue;

        //     //     List<ClassStruct> classStructs = new();

        //     //     if(type.Type.IsClass || type.Type.IsInterface)
        //     //     {
        //     //         AddClassToClassStructs(ref classStructs, type.Type);
        //     //     }

        //     //     addedTypes.Add(new AssemblyTypeStruct{
        //     //         Assembly = type.Assembly,
        //     //         Type = type.Type,
        //     //         Classes = classStructs
        //     //     });

                
        //     // }

        //     // foreach(AssemblyTypeStruct assemblyTypeStruct in addedTypes)
        //     // {
        //     //     // List<ClassStruct> structsToAdd = new();
        //     //     // structsToAdd = classStructs.Where(cs => cs.Assembly.FullName == assemblyTypeStruct.Assembly.FullName).ToList();
        //     //     result.Add(assemblyTypeStruct, );
        //     // }

        //     return assemblyTypeStructs;


        //     // return classStructs;

        //     // StringBuilder sb = new();

        //     // sb.AppendLine("---@meta");

        //     // Type? previousClassType = null;

        //     // while(typeList.Any())
        //     // {
        //     //     api.Logger.Event("HELIX: Adding " + typeList.First().Type.Name + " from Assembly " + typeList.First().Assembly.GetName());
        //     //     AddTypeToMeta(ref previousClassType, ref typeList, ref addedTypes, ref sb);
        //     // }
			
        //     // return sb.ToString();
        // }

        // public static void GetNestedTypes(ref List<Type> addedTypes, ref List<AssemblyTypeStruct> assemblyTypeStructs, Type type)
        // {
        //     if(addedTypes.Contains(type)) return;
        //     addedTypes.Add(type);

        //     // List<Type> typesToProcess = new();

        //     // typesToProcess.AddRange(type.GetAllImplementedTypes());
        //     // typesToProcess.AddRange(type.GetInterfaces());

        //     // type.GetFields().Foreach(f => {
        //     //     if(f.ReflectedType != null)
        //     //         typesToProcess.Add(f.ReflectedType);
        //     // });
        //     // type.GetMembers().Foreach(f => {
        //     //     if(f.ReflectedType != null)
        //     //         typesToProcess.Add(f.ReflectedType);
        //     // });

        //     // type.GetMethods().Foreach(f => {
        //     //     if(f.ReturnType != null)
        //     //         typesToProcess.Add(f.ReturnType);
        //     // });
        //     // type.GetMethods().Foreach(f=>{
                
        //     // });

        //     var newTypeAssembly = new AssemblyTypeStruct(){
        //         Assembly = type.Assembly,
        //         Type = type,
        //         Classes = new List<ClassStruct>()
        //     };

        //     // foreach(var assemblyType in assemblyTypeStructs)
        //     // {

        //     newTypeAssembly.Classes.Add(AddClassToClassStructs(type));

        //     assemblyTypeStructs.Add(newTypeAssembly);

        //     // foreach(Type typeToProcess in typesToProcess)
        //     // {
        //     //     GetNestedTypes(ref addedTypes, ref assemblyTypeStructs, typeToProcess);
        //     // }
        // }


        // public static ClassStruct AddClassToClassStructs(Type classType)
        // {
        //     IEnumerable<MethodInfo> methodInfos = classType.GetMethods();
        //     IEnumerable<MemberInfo> memberInfos = classType.GetMembers();
        //     IEnumerable<FieldInfo> fieldInfos = classType.GetFields();

        //     List<ClassMethodStruct> classMethods = new();
        //     List<ClassMemberStruct> classMembers = new();
        //     List<ClassFieldStruct> classFields = new();

        //     ClassStruct classToAdd = new()
        //     {
        //         Name = classType.Name,
        //         Inherits = classType.BaseType?.Name ?? string.Empty,
        //         IsInterface = classType.IsInterface,
        //         IsPublic = classType.IsPublic
        //     };

        //     foreach(MethodInfo info in methodInfos)
        //     {
        //         IEnumerable<ParameterInfo> parameterInfos = info.GetParameters();

        //         List<ClassMethodParameterStruct> parameterStructs = new();

        //         foreach(ParameterInfo parameterInfo in parameterInfos)
        //         {
        //             parameterStructs.Add(new ClassMethodParameterStruct(){
        //                 IsOptional = parameterInfo.IsOptional,
        //                 Name = parameterInfo.Name,
        //                 Type = parameterInfo.ParameterType
        //             });
        //         }

        //         classMethods.Add(new ClassMethodStruct(){
        //             IsPublic = info.IsPublic,
        //             Name = info.Name,
        //             Parameters = parameterStructs,
        //             ReturnType = info.ReturnType
        //         });
        //     }

        //     foreach(MemberInfo memberInfo in memberInfos)
        //     {
        //         classMembers.Add(new ClassMemberStruct(){
        //             Name = memberInfo.Name,
        //             Type = memberInfo.MemberType.ToString(),
        //         });
        //     }

        //     foreach(FieldInfo fieldInfo in fieldInfos)
        //     {
        //         classFields.Add(new ClassFieldStruct(){
        //             IsPublic = fieldInfo.IsPublic,
        //             Name = fieldInfo.Name,
        //             Type = fieldInfo.FieldType
        //         });
        //     }

        //     classToAdd.ClassMethods = classMethods;
        //     classToAdd.ClassMembers = classMembers;
        //     classToAdd.ClassFields = classFields;

        //     return classToAdd;
        // }

    }
}