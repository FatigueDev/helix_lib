---@meta

---@class Packet_InventoryDoubleUpdate
---@field ClientId number
---@field InventoryId1 string
---@field InventoryId2 string
---@field SlotId1 number
---@field SlotId2 number
---@field ItemStack1 Packet_ItemStack
---@field ItemStack2 Packet_ItemStack
---@field ClientIdFieldID number
---@field InventoryId1FieldID number
---@field InventoryId2FieldID number
---@field SlotId1FieldID number
---@field SlotId2FieldID number
---@field ItemStack1FieldID number
---@field ItemStack2FieldID number
Packet_InventoryDoubleUpdate = {}

---@return Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdate.ctor() end

---@param value number
function Packet_InventoryDoubleUpdate.SetClientId(value) end

---@param value string
function Packet_InventoryDoubleUpdate.SetInventoryId1(value) end

---@param value string
function Packet_InventoryDoubleUpdate.SetInventoryId2(value) end

---@param value number
function Packet_InventoryDoubleUpdate.SetSlotId1(value) end

---@param value number
function Packet_InventoryDoubleUpdate.SetSlotId2(value) end

---@param value Packet_ItemStack
function Packet_InventoryDoubleUpdate.SetItemStack1(value) end

---@param value Packet_ItemStack
function Packet_InventoryDoubleUpdate.SetItemStack2(value) end

---@return userdata
function Packet_InventoryDoubleUpdate.GetType() end

---@return string
function Packet_InventoryDoubleUpdate.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryDoubleUpdate.Equals(obj) end

---@return number
function Packet_InventoryDoubleUpdate.GetHashCode() end


