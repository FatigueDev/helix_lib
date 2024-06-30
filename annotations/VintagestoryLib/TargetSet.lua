---@meta

---@class TargetSet
TargetSet = {}

---@return TargetSet
function TargetSet.ctor() end

---@param shape CompositeShape
---@param message string
---@param sourceLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param alternateNo? number
function TargetSet.Add(shape, message, sourceLoc, alternateNo) end

---@return userdata
function TargetSet.GetType() end

---@return string
function TargetSet.ToString() end

---@param obj userdata
---@return boolean
function TargetSet.Equals(obj) end

---@return number
function TargetSet.GetHashCode() end


