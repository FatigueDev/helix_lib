---@meta

-- This contains data about an event that fires when a player changes which slot they're actively using. Such as the currently selected hotbar slot.
---@class ActiveSlotChangeEventArgs
---@field FromSlot number The currently active slot being switched away from.
---@field ToSlot number The target slot that is being switched to.
ActiveSlotChangeEventArgs = {}

---@param from number
---@param to number
---@return ActiveSlotChangeEventArgs
function ActiveSlotChangeEventArgs.ctor(from, to) end

---@return number
function ActiveSlotChangeEventArgs.get_FromSlot() end

---@return number
function ActiveSlotChangeEventArgs.get_ToSlot() end

---@return userdata
function ActiveSlotChangeEventArgs.GetType() end

---@return string
function ActiveSlotChangeEventArgs.ToString() end

---@param obj userdata
---@return boolean
function ActiveSlotChangeEventArgs.Equals(obj) end

---@return number
function ActiveSlotChangeEventArgs.GetHashCode() end


