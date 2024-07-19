---@meta

---@class Packet_ServerMapChunk
---@field ChunkX number
---@field ChunkZ number
---@field Ymax number
---@field RainHeightMap number
---@field TerrainHeightMap number
---@field Structures number
---@field Moddata number
---@field ChunkXFieldID number
---@field ChunkZFieldID number
---@field YmaxFieldID number
---@field RainHeightMapFieldID number
---@field TerrainHeightMapFieldID number
---@field StructuresFieldID number
---@field ModdataFieldID number
Packet_ServerMapChunk = {}

---@return Packet_ServerMapChunk
function Packet_ServerMapChunk.ctor() end

---@param value number
function Packet_ServerMapChunk.SetChunkX(value) end

---@param value number
function Packet_ServerMapChunk.SetChunkZ(value) end

---@param value number
function Packet_ServerMapChunk.SetYmax(value) end

---@param value number
function Packet_ServerMapChunk.SetRainHeightMap(value) end

---@param value number
function Packet_ServerMapChunk.SetTerrainHeightMap(value) end

---@param value number
function Packet_ServerMapChunk.SetStructures(value) end

---@param value number
function Packet_ServerMapChunk.SetModdata(value) end

---@return userdata
function Packet_ServerMapChunk.GetType() end

---@return string
function Packet_ServerMapChunk.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerMapChunk.Equals(obj) end

---@return number
function Packet_ServerMapChunk.GetHashCode() end


