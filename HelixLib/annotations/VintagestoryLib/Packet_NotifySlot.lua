---@meta

---@class Packet_NotifySlot
---@field InventoryId string
---@field SlotId number
---@field InventoryIdFieldID number
---@field SlotIdFieldID number
Packet_NotifySlot = {}

---@return Packet_NotifySlot
function Packet_NotifySlot.ctor() end

---@param value string
function Packet_NotifySlot.SetInventoryId(value) end

---@param value number
function Packet_NotifySlot.SetSlotId(value) end

---@return userdata
function Packet_NotifySlot.GetType() end

---@return string
function Packet_NotifySlot.ToString() end

---@param obj userdata
---@return boolean
function Packet_NotifySlot.Equals(obj) end

---@return number
function Packet_NotifySlot.GetHashCode() end


