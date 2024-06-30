---@meta

---@class Packet_ServerEntityDrawBlock
---@field BlockType number
---@field BlockTypeFieldID number
Packet_ServerEntityDrawBlock = {}

---@return Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlock.ctor() end

---@param value number
function Packet_ServerEntityDrawBlock.SetBlockType(value) end

---@return userdata
function Packet_ServerEntityDrawBlock.GetType() end

---@return string
function Packet_ServerEntityDrawBlock.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerEntityDrawBlock.Equals(obj) end

---@return number
function Packet_ServerEntityDrawBlock.GetHashCode() end


