---@meta

---@class ModContainer: Mod, Mod
---@field Enabled boolean
---@field Status ModStatus
---@field Error Nullable`1
---@field FolderPath string
---@field SourceFiles table
---@field AssemblyFiles table
---@field RequiresCompilation boolean
---@field Assembly Assembly
---@field SourceType EnumModSourceType Gets the origin file type of the mod (.cs, .dll, .zip or folder). 
---@field SourcePath string Gets the full path to where this mod originated from, including file name. 
---@field FileName string Gets the file name of this mod. 
---@field Info ModInfo Gets the info of this mod. Found either as "modinfo.json" in the of the mod's folder or archive, or in the case of raw .cs and .dll files, using the ModInfoAttribute on the assembly.
---@field WorldConfig ModWorldConfiguration
---@field Icon BitmapExternal Holds the icon of this mod. Found as "modicon.png" in the root of the mod's folder or archive. May be null.
---@field Logger ILogger Gets the logger associated with this mod. 
---@field Systems IReadOnlyCollection`1 Gets a collection of systems belonging to this mod. 
---@field MissingDependencies table
ModContainer = {}

---@param fsInfo FileSystemInfo
---@param parentLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param logDebug boolean
---@return ModContainer
function ModContainer.ctor(fsInfo, parentLogger, logDebug) end

---@return boolean
function ModContainer.get_Enabled() end

---@return ModStatus
function ModContainer.get_Status() end

---@param value ModStatus
function ModContainer.set_Status(value) end

---@return Nullable`1
function ModContainer.get_Error() end

---@param value Nullable`1
function ModContainer.set_Error(value) end

---@return string
function ModContainer.get_FolderPath() end

---@return table
function ModContainer.get_SourceFiles() end

---@return table
function ModContainer.get_AssemblyFiles() end

---@return boolean
function ModContainer.get_RequiresCompilation() end

---@return Assembly
function ModContainer.get_Assembly() end

---@param fsInfo FileSystemInfo
---@return Nullable`1
function ModContainer.GetSourceType(fsInfo) end

---@param error ModError
function ModContainer.SetError(error) end

---@param unpackPath string
function ModContainer.Unpack(unpackPath) end

---@param compilationContext ModCompilationContext
---@param loader ModAssemblyLoader
function ModContainer.LoadModInfo(compilationContext, loader) end

---@param compilationContext ModCompilationContext
---@param loader ModAssemblyLoader
function ModContainer.LoadAssembly(compilationContext, loader) end

---@param side EnumAppSide
function ModContainer.InstantiateModSystems(side) end

---@return EnumModSourceType # Represents the origin file type of the mod.
function ModContainer.get_SourceType() end

---@return string
function ModContainer.get_SourcePath() end

---@return string
function ModContainer.get_FileName() end

---@return ModInfo # Meta data for a specific mod folder, archive, source file or assembly. Either loaded from a "modinfo.json" or from the assembly's ModInfoAttribute.
function ModContainer.get_Info() end

---@return ModWorldConfiguration
function ModContainer.get_WorldConfig() end

---@return BitmapExternal
function ModContainer.get_Icon() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ModContainer.get_Logger() end

---@return IReadOnlyCollection`1
function ModContainer.get_Systems() end

---@return string
function ModContainer.ToString() end

---@return userdata
function ModContainer.GetType() end

---@param obj userdata
---@return boolean
function ModContainer.Equals(obj) end

---@return number
function ModContainer.GetHashCode() end


