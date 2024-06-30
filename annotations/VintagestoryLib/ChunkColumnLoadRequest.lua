---@meta

---@class ChunkColumnLoadRequest:  ILongIndex, IChunkColumnGenerateRequest
---@field Index number
---@field GenerateUntilPass EnumWorldGenPass
---@field CurrentIncompletePass EnumWorldGenPass
---@field CurrentIncompletePass_AsInt number
---@field ChunkX number
---@field ChunkZ number
---@field ChunkGenParams ITreeAttribute
---@field NeighbourTerrainHeight number
---@field RequiresChunkBorderSmoothing boolean
ChunkColumnLoadRequest = {}

---@param index2d number
---@param chunkX number
---@param chunkZ number
---@param clientId number
---@param untilPass number
---@param server IShutDownMonitor
---@return ChunkColumnLoadRequest
function ChunkColumnLoadRequest.ctor(index2d, chunkX, chunkZ, clientId, untilPass, server) end

---@return number
function ChunkColumnLoadRequest.get_Index() end

---@return EnumWorldGenPass # The stages a chunk goes through when being created
function ChunkColumnLoadRequest.get_GenerateUntilPass() end

---@return EnumWorldGenPass # The stages a chunk goes through when being created
function ChunkColumnLoadRequest.get_CurrentIncompletePass() end

---@param value EnumWorldGenPass The stages a chunk goes through when being created
function ChunkColumnLoadRequest.set_CurrentIncompletePass(value) end

---@return number
function ChunkColumnLoadRequest.get_CurrentIncompletePass_AsInt() end

---@return number
function ChunkColumnLoadRequest.get_ChunkX() end

---@return number
function ChunkColumnLoadRequest.get_ChunkZ() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ChunkColumnLoadRequest.get_ChunkGenParams() end

---@return number
function ChunkColumnLoadRequest.get_NeighbourTerrainHeight() end

---@param value number
function ChunkColumnLoadRequest.set_NeighbourTerrainHeight(value) end

---@return boolean
function ChunkColumnLoadRequest.get_RequiresChunkBorderSmoothing() end

---@param value boolean
function ChunkColumnLoadRequest.set_RequiresChunkBorderSmoothing(value) end

function ChunkColumnLoadRequest.FlagToDispose() end

function ChunkColumnLoadRequest.FlagToRequeue() end

---@return userdata
function ChunkColumnLoadRequest.GetType() end

---@return string
function ChunkColumnLoadRequest.ToString() end

---@param obj userdata
---@return boolean
function ChunkColumnLoadRequest.Equals(obj) end

---@return number
function ChunkColumnLoadRequest.GetHashCode() end


