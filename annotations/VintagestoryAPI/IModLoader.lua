---@meta

---@class IModLoader
---@field Mods function Gets a collection of all enabled mods.
---@field Systems function Gets a collection of all loaded and enabled mod systems.
IModLoader = {}


---@return function
function IModLoader.get_Mods() end

---@return function
function IModLoader.get_Systems() end

-- Gets the enabled mod with the specified mod ID (domain).
-- Returns null if no mod with that mod ID was found.
---@param modID string
---@return Mod # Represents a mod in the mod manager. May contain zero to multiple ModSystem instances within it.
function IModLoader.GetMod(modID) end

-- Returns if the mod with the specified mod ID (domain) is enabled.
---@param modID string
---@return boolean
function IModLoader.IsModEnabled(modID) end

-- Gets a loaded mod system with the specified full name, that is the namespace and
-- class name, for example "Vintagestory.ServerMods.Core" for the survival mod.
-- Returns null if no mod with that name was found.
---@param fullName string
---@return ModSystem # Base of a system, which is part of a code mod. Takes care of setting up, registering and handling all sorts of things. You may choose to split up a mod into multiple distinct systems if you so choose, but there may also be just one.
function IModLoader.GetModSystem(fullName) end

---@param withInheritance? boolean
---@return T
function IModLoader.GetModSystem(withInheritance) end

-- Returns if the mod system with the specified full name is loaded and enabled.
---@param fullName string
---@return boolean
function IModLoader.IsModSystemEnabled(fullName) end


