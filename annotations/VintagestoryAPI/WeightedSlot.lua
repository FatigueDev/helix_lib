---@meta

---@class WeightedSlot
---@field slot ItemSlot The slot that is weighted.
---@field weight number The weight of the slot.
WeightedSlot = {}

---@return WeightedSlot
function WeightedSlot.ctor() end

---@return userdata
function WeightedSlot.GetType() end

---@return string
function WeightedSlot.ToString() end

---@param obj userdata
---@return boolean
function WeightedSlot.Equals(obj) end

---@return number
function WeightedSlot.GetHashCode() end


