---@meta

---@class Packet_StringList
---@field Items string
---@field ItemsCount number
---@field ItemsLength number
---@field ItemsFieldID number
Packet_StringList = {}

---@return Packet_StringList
function Packet_StringList.ctor() end

---@return string
function Packet_StringList.GetItems() end

---@param value string
---@param count number
---@param length number
function Packet_StringList.SetItems(value, count, length) end

---@param value string
function Packet_StringList.SetItems(value) end

---@return number
function Packet_StringList.GetItemsCount() end

---@param value string
function Packet_StringList.ItemsAdd(value) end

---@return userdata
function Packet_StringList.GetType() end

---@return string
function Packet_StringList.ToString() end

---@param obj userdata
---@return boolean
function Packet_StringList.Equals(obj) end

---@return number
function Packet_StringList.GetHashCode() end


