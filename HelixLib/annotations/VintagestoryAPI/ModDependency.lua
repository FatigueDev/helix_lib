---@meta

-- Represents a mod dependency requirement of one mod for another.
---@class ModDependency
---@field ModID string The required mod id (domain) of this dependency. 
---@field Version string The minimum version requirement of this dependency. May be empty if the no specific version is required.
ModDependency = {}

---@param modID string
---@param version? string
---@return ModDependency
function ModDependency.ctor(modID, version) end

---@return string
function ModDependency.get_ModID() end

---@return string
function ModDependency.get_Version() end

-- Returns the Mod Dependancy as a string.
---@return string
function ModDependency.ToString() end

---@return userdata
function ModDependency.GetType() end

---@param obj userdata
---@return boolean
function ModDependency.Equals(obj) end

---@return number
function ModDependency.GetHashCode() end


