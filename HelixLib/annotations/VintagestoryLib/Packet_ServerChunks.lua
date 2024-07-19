---@meta

---@class Packet_ServerChunks
---@field Chunks Packet_ServerChunk[]
---@field ChunksCount number
---@field ChunksLength number
---@field ChunksFieldID number
Packet_ServerChunks = {}

---@return Packet_ServerChunks
function Packet_ServerChunks.ctor() end

---@return Packet_ServerChunk[]
function Packet_ServerChunks.GetChunks() end

---@param value Packet_ServerChunk[]
---@param count number
---@param length number
function Packet_ServerChunks.SetChunks(value, count, length) end

---@param value Packet_ServerChunk[]
function Packet_ServerChunks.SetChunks(value) end

---@return number
function Packet_ServerChunks.GetChunksCount() end

---@param value Packet_ServerChunk
function Packet_ServerChunks.ChunksAdd(value) end

---@return userdata
function Packet_ServerChunks.GetType() end

---@return string
function Packet_ServerChunks.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerChunks.Equals(obj) end

---@return number
function Packet_ServerChunks.GetHashCode() end


