---@meta

-- Represents a mod in the mod manager. May contain zero to multiple ModSystem instances within it.
---@class Mod
---@field SourceType EnumModSourceType Gets the origin file type of the mod (.cs, .dll, .zip or folder). 
---@field SourcePath string Gets the full path to where this mod originated from, including file name. 
---@field FileName string Gets the file name of this mod. 
---@field Info ModInfo Gets the info of this mod. Found either as "modinfo.json" in the of the mod's folder or archive, or in the case of raw .cs and .dll files, using the ModInfoAttribute on the assembly.
---@field WorldConfig ModWorldConfiguration
---@field Icon BitmapExternal Holds the icon of this mod. Found as "modicon.png" in the root of the mod's folder or archive. May be null.
---@field Logger ILogger Gets the logger associated with this mod. 
---@field Systems IReadOnlyCollection`1 Gets a collection of systems belonging to this mod. 
Mod = {}


---@return EnumModSourceType # Represents the origin file type of the mod.
function Mod.get_SourceType() end

---@return string
function Mod.get_SourcePath() end

---@return string
function Mod.get_FileName() end

---@return ModInfo # Meta data for a specific mod folder, archive, source file or assembly. Either loaded from a "modinfo.json" or from the assembly's ModInfoAttribute.
function Mod.get_Info() end

---@return ModWorldConfiguration
function Mod.get_WorldConfig() end

---@return BitmapExternal
function Mod.get_Icon() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function Mod.get_Logger() end

---@return IReadOnlyCollection`1
function Mod.get_Systems() end

---@return string
function Mod.ToString() end

---@return userdata
function Mod.GetType() end

---@param obj userdata
---@return boolean
function Mod.Equals(obj) end

---@return number
function Mod.GetHashCode() end


