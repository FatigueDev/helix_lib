---@meta

---@class Packet_ServerSetBlock
---@field X number
---@field Y number
---@field Z number
---@field BlockType number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field BlockTypeFieldID number
Packet_ServerSetBlock = {}

---@return Packet_ServerSetBlock
function Packet_ServerSetBlock.ctor() end

---@param value number
function Packet_ServerSetBlock.SetX(value) end

---@param value number
function Packet_ServerSetBlock.SetY(value) end

---@param value number
function Packet_ServerSetBlock.SetZ(value) end

---@param value number
function Packet_ServerSetBlock.SetBlockType(value) end

---@return userdata
function Packet_ServerSetBlock.GetType() end

---@return string
function Packet_ServerSetBlock.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetBlock.Equals(obj) end

---@return number
function Packet_ServerSetBlock.GetHashCode() end


