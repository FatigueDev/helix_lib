---@meta

---@class IChunkProviderThread
IChunkProviderThread = {}


-- Retrieve a customized interface to access blocks for generating chunks
---@param updateHeightmap boolean
---@return IWorldGenBlockAccessor
function IChunkProviderThread.GetBlockAccessor(updateHeightmap) end


