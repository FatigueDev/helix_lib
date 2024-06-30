---@meta

---@class ClientChunkDataPool: ChunkDataPool, ChunkDataPool, IShutDownMonitor
---@field ShuttingDown boolean
---@field Game GameMain
---@field Logger ILogger
---@field game ClientMain
---@field SlowDisposeThreshold number
---@field CacheSize number
---@field BlackHoleData ChunkData
---@field OnlyAirBlocksData IChunkBlocks
---@field server ServerMain
ClientChunkDataPool = {}

---@param chunksize number
---@param game ClientMain
---@return ClientChunkDataPool
function ClientChunkDataPool.ctor(chunksize, game) end

---@return boolean
function ClientChunkDataPool.get_ShuttingDown() end

---@return GameMain
function ClientChunkDataPool.get_Game() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientChunkDataPool.get_Logger() end

---@return ChunkData
function ClientChunkDataPool.Request() end

function ClientChunkDataPool.FreeAll() end

---@param cdata ChunkData
function ClientChunkDataPool.Free(cdata) end

---@param layer ChunkDataLayer
function ClientChunkDataPool.FreeArrays(layer) end

---@param cdata ChunkData
function ClientChunkDataPool.FreeArraysAndReset(cdata) end

function ClientChunkDataPool.SlowDispose() end

---@return number
function ClientChunkDataPool.CountFree() end

---@return userdata
function ClientChunkDataPool.GetType() end

---@return string
function ClientChunkDataPool.ToString() end

---@param obj userdata
---@return boolean
function ClientChunkDataPool.Equals(obj) end

---@return number
function ClientChunkDataPool.GetHashCode() end


