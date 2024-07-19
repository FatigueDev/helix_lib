---@meta

---@class Packet_BlockEntityMessage
---@field X number
---@field Y number
---@field Z number
---@field PacketId number
---@field Data number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field PacketIdFieldID number
---@field DataFieldID number
Packet_BlockEntityMessage = {}

---@return Packet_BlockEntityMessage
function Packet_BlockEntityMessage.ctor() end

---@param value number
function Packet_BlockEntityMessage.SetX(value) end

---@param value number
function Packet_BlockEntityMessage.SetY(value) end

---@param value number
function Packet_BlockEntityMessage.SetZ(value) end

---@param value number
function Packet_BlockEntityMessage.SetPacketId(value) end

---@param value number
function Packet_BlockEntityMessage.SetData(value) end

---@return userdata
function Packet_BlockEntityMessage.GetType() end

---@return string
function Packet_BlockEntityMessage.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntityMessage.Equals(obj) end

---@return number
function Packet_BlockEntityMessage.GetHashCode() end


