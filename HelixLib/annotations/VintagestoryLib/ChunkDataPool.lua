---@meta

---@class ChunkDataPool:  IShutDownMonitor
---@field ShuttingDown boolean
---@field Game GameMain
---@field Logger ILogger
---@field SlowDisposeThreshold number
---@field CacheSize number
---@field BlackHoleData ChunkData
---@field OnlyAirBlocksData IChunkBlocks
---@field server ServerMain
ChunkDataPool = {}

---@param chunksize number
---@param serverMain ServerMain
---@return ChunkDataPool
function ChunkDataPool.ctor(chunksize, serverMain) end

---@return boolean
function ChunkDataPool.get_ShuttingDown() end

---@return GameMain
function ChunkDataPool.get_Game() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ChunkDataPool.get_Logger() end

function ChunkDataPool.FreeAll() end

---@return ChunkData
function ChunkDataPool.Request() end

---@param cdata ChunkData
function ChunkDataPool.Free(cdata) end

---@param layer ChunkDataLayer
function ChunkDataPool.FreeArrays(layer) end

---@param cdata ChunkData
function ChunkDataPool.FreeArraysAndReset(cdata) end

function ChunkDataPool.SlowDispose() end

---@return number
function ChunkDataPool.CountFree() end

---@return userdata
function ChunkDataPool.GetType() end

---@return string
function ChunkDataPool.ToString() end

---@param obj userdata
---@return boolean
function ChunkDataPool.Equals(obj) end

---@return number
function ChunkDataPool.GetHashCode() end


