---@meta

---@class Packet_InvOpenClose
---@field InventoryId string
---@field Opened number
---@field InventoryIdFieldID number
---@field OpenedFieldID number
Packet_InvOpenClose = {}

---@return Packet_InvOpenClose
function Packet_InvOpenClose.ctor() end

---@param value string
function Packet_InvOpenClose.SetInventoryId(value) end

---@param value number
function Packet_InvOpenClose.SetOpened(value) end

---@return userdata
function Packet_InvOpenClose.GetType() end

---@return string
function Packet_InvOpenClose.ToString() end

---@param obj userdata
---@return boolean
function Packet_InvOpenClose.Equals(obj) end

---@return number
function Packet_InvOpenClose.GetHashCode() end


