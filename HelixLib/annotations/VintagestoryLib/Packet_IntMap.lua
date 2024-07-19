---@meta

---@class Packet_IntMap
---@field Data number
---@field DataCount number
---@field DataLength number
---@field Size number
---@field TopLeftPadding number
---@field BottomRightPadding number
---@field DataFieldID number
---@field SizeFieldID number
---@field TopLeftPaddingFieldID number
---@field BottomRightPaddingFieldID number
Packet_IntMap = {}

---@return Packet_IntMap
function Packet_IntMap.ctor() end

---@return number
function Packet_IntMap.GetData() end

---@param value number
---@param count number
---@param length number
function Packet_IntMap.SetData(value, count, length) end

---@param value number
function Packet_IntMap.SetData(value) end

---@return number
function Packet_IntMap.GetDataCount() end

---@param value number
function Packet_IntMap.DataAdd(value) end

---@param value number
function Packet_IntMap.SetSize(value) end

---@param value number
function Packet_IntMap.SetTopLeftPadding(value) end

---@param value number
function Packet_IntMap.SetBottomRightPadding(value) end

---@return userdata
function Packet_IntMap.GetType() end

---@return string
function Packet_IntMap.ToString() end

---@param obj userdata
---@return boolean
function Packet_IntMap.Equals(obj) end

---@return number
function Packet_IntMap.GetHashCode() end


