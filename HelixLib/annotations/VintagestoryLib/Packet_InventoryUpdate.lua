---@meta

---@class Packet_InventoryUpdate
---@field ClientId number
---@field InventoryId string
---@field SlotId number
---@field ItemStack Packet_ItemStack
---@field ClientIdFieldID number
---@field InventoryIdFieldID number
---@field SlotIdFieldID number
---@field ItemStackFieldID number
Packet_InventoryUpdate = {}

---@return Packet_InventoryUpdate
function Packet_InventoryUpdate.ctor() end

---@param value number
function Packet_InventoryUpdate.SetClientId(value) end

---@param value string
function Packet_InventoryUpdate.SetInventoryId(value) end

---@param value number
function Packet_InventoryUpdate.SetSlotId(value) end

---@param value Packet_ItemStack
function Packet_InventoryUpdate.SetItemStack(value) end

---@return userdata
function Packet_InventoryUpdate.GetType() end

---@return string
function Packet_InventoryUpdate.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryUpdate.Equals(obj) end

---@return number
function Packet_InventoryUpdate.GetHashCode() end


