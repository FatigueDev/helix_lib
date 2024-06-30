---@meta

---@class Packet_ServerSetBlocks
---@field SetBlocks number
---@field SetBlocksFieldID number
Packet_ServerSetBlocks = {}

---@return Packet_ServerSetBlocks
function Packet_ServerSetBlocks.ctor() end

---@param value number
function Packet_ServerSetBlocks.SetSetBlocks(value) end

---@return userdata
function Packet_ServerSetBlocks.GetType() end

---@return string
function Packet_ServerSetBlocks.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetBlocks.Equals(obj) end

---@return number
function Packet_ServerSetBlocks.GetHashCode() end


