---@meta

---@class ModId
---@field Id string
---@field Name string
---@field NetworkVersion string
---@field Version string
---@field RequiredOnClient boolean
ModId = {}

---@return ModId
function ModId.ctor() end

---@return userdata
function ModId.GetType() end

---@return string
function ModId.ToString() end

---@param obj userdata
---@return boolean
function ModId.Equals(obj) end

---@return number
function ModId.GetHashCode() end


