---@meta

---@class Packet_CreateItemstack
---@field TargetInventoryId string
---@field TargetSlot number
---@field TargetLastChanged number
---@field Itemstack Packet_ItemStack
---@field TargetInventoryIdFieldID number
---@field TargetSlotFieldID number
---@field TargetLastChangedFieldID number
---@field ItemstackFieldID number
Packet_CreateItemstack = {}

---@return Packet_CreateItemstack
function Packet_CreateItemstack.ctor() end

---@param value string
function Packet_CreateItemstack.SetTargetInventoryId(value) end

---@param value number
function Packet_CreateItemstack.SetTargetSlot(value) end

---@param value number
function Packet_CreateItemstack.SetTargetLastChanged(value) end

---@param value Packet_ItemStack
function Packet_CreateItemstack.SetItemstack(value) end

---@return userdata
function Packet_CreateItemstack.GetType() end

---@return string
function Packet_CreateItemstack.ToString() end

---@param obj userdata
---@return boolean
function Packet_CreateItemstack.Equals(obj) end

---@return number
function Packet_CreateItemstack.GetHashCode() end


