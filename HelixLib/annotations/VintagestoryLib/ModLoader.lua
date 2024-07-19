---@meta

---@class ModLoader:  IModLoader
---@field TextureSize number
---@field ModSearchPaths IReadOnlyCollection`1
---@field UnpackPath string
---@field Mods function
---@field Systems function
---@field MissingDependencies table
ModLoader = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param side EnumAppSide
---@param modSearchPaths function
---@param traceLog boolean
---@return ModLoader
function ModLoader.ctor(logger, side, modSearchPaths, traceLog) end
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param modSearchPaths function
---@param traceLog boolean
---@return ModLoader
function ModLoader.ctor(api, modSearchPaths, traceLog) end

---@return number
function ModLoader.get_TextureSize() end

---@param value number
function ModLoader.set_TextureSize(value) end

---@return IReadOnlyCollection`1
function ModLoader.get_ModSearchPaths() end

---@return string
function ModLoader.get_UnpackPath() end

---@return function
function ModLoader.get_Mods() end

---@return function
function ModLoader.get_Systems() end

---@param modID string
---@return Mod # Represents a mod in the mod manager. May contain zero to multiple ModSystem instances within it.
function ModLoader.GetMod(modID) end

---@param modID string
---@return boolean
function ModLoader.IsModEnabled(modID) end

---@param fullName string
---@return ModSystem # Base of a system, which is part of a code mod. Takes care of setting up, registering and handling all sorts of things. You may choose to split up a mod into multiple distinct systems if you so choose, but there may also be just one.
function ModLoader.GetModSystem(fullName) end

---@param withInheritance? boolean
---@return T
function ModLoader.GetModSystem(withInheritance) end

---@param fullName string
---@return boolean
function ModLoader.IsModSystemEnabled(fullName) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function ModLoader.GetContentArchives() end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function ModLoader.GetThemeArchives() end

---@return table
function ModLoader.LoadModInfos() end

---@param disabledModsByIdAndVersion? function
---@return table
function ModLoader.LoadModInfosAndVerify(disabledModsByIdAndVersion) end

---@param mods table
---@param disabledModsByIdAndVersion? function
---@return table
function ModLoader.DisableAndVerify(mods, disabledModsByIdAndVersion) end

---@param disabledModsByIdAndVersion? function
function ModLoader.LoadMods(disabledModsByIdAndVersion) end

---@param mods table
---@param disabledModsByIdAndVersion? function
function ModLoader.LoadMods(mods, disabledModsByIdAndVersion) end

---@param phase ModRunPhase
function ModLoader.RunModPhase(phase) end

---@param enabledSystems table
---@param phase ModRunPhase
function ModLoader.RunModPhase(enabledSystems, phase) end

function ModLoader.Dispose() end

---@return userdata
function ModLoader.GetType() end

---@return string
function ModLoader.ToString() end

---@param obj userdata
---@return boolean
function ModLoader.Equals(obj) end

---@return number
function ModLoader.GetHashCode() end


