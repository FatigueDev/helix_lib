---@meta

---@class IChunkProvider
---@field Logger ILogger
IChunkProvider = {}


---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function IChunkProvider.get_Logger() end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function IChunkProvider.GetChunk(chunkX, chunkY, chunkZ) end

-- Like GetChunk() but includes a cache of the last chunk fetched - use this in a loop where getting the chunk for neighbouring blockPos, so most will be in the same chunk
-- This always unpacks the chunk, unless it is null.
-- Implementing code must ensure the chunk is unpacked before returning it, unless returning the cached chunk and notRecentlyAccessed is false (i.e. if the cache chunk was recently accessed then it's safe to assume it was already unpacked)
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param notRecentlyAccessed? boolean
---@return IWorldChunk
function IChunkProvider.GetUnpackedChunkFast(chunkX, chunkY, chunkZ, notRecentlyAccessed) end

-- Index for a chunk coordinate
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function IChunkProvider.ChunkIndex3D(chunkX, chunkY, chunkZ) end


