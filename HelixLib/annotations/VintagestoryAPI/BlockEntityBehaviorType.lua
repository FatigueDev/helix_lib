---@meta

---@class BlockEntityBehaviorType
---@field Name string
---@field properties JsonObject
BlockEntityBehaviorType = {}

---@return BlockEntityBehaviorType
function BlockEntityBehaviorType.ctor() end

---@return userdata
function BlockEntityBehaviorType.GetType() end

---@return string
function BlockEntityBehaviorType.ToString() end

---@param obj userdata
---@return boolean
function BlockEntityBehaviorType.Equals(obj) end

---@return number
function BlockEntityBehaviorType.GetHashCode() end


