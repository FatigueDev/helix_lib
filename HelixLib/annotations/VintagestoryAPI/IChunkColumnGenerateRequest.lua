---@meta

---@class IChunkColumnGenerateRequest
---@field Chunks IServerChunk[]
---@field ChunkX number
---@field ChunkZ number
---@field ChunkGenParams ITreeAttribute
---@field NeighbourTerrainHeight number
---@field RequiresChunkBorderSmoothing boolean
IChunkColumnGenerateRequest = {}


---@return IServerChunk[] # Some extra methods available for server side chunks
function IChunkColumnGenerateRequest.get_Chunks() end

---@return number
function IChunkColumnGenerateRequest.get_ChunkX() end

---@return number
function IChunkColumnGenerateRequest.get_ChunkZ() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function IChunkColumnGenerateRequest.get_ChunkGenParams() end

---@return number
function IChunkColumnGenerateRequest.get_NeighbourTerrainHeight() end

---@return boolean
function IChunkColumnGenerateRequest.get_RequiresChunkBorderSmoothing() end


