---@meta

-- Applied to a mod assembly multiple times for each required dependency. Superseded by this mod's "modinfo.json" file, if available.
---@class ModDependencyAttribute: Attribute, Attribute
---@field ModID string The required mod id (domain) of this dependency. 
---@field Version string The minimum version requirement of this dependency. May be empty if the no specific version is required.
---@field TypeId userdata
ModDependencyAttribute = {}

---@param modID string
---@param version? string
---@return ModDependencyAttribute
function ModDependencyAttribute.ctor(modID, version) end

---@return string
function ModDependencyAttribute.get_ModID() end

---@return string
function ModDependencyAttribute.get_Version() end

---@param obj userdata
---@return boolean
function ModDependencyAttribute.Equals(obj) end

---@return number
function ModDependencyAttribute.GetHashCode() end

---@return userdata
function ModDependencyAttribute.get_TypeId() end

---@param obj userdata
---@return boolean
function ModDependencyAttribute.Match(obj) end

---@return boolean
function ModDependencyAttribute.IsDefaultAttribute() end

---@return userdata
function ModDependencyAttribute.GetType() end

---@return string
function ModDependencyAttribute.ToString() end


