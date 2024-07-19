---@meta

---@class ICachingBlockAccessor:  IBlockAccessor
---@field LastChunkLoaded boolean True if the most recent GetBlock or SetBlock had a laoded chunk 
ICachingBlockAccessor = {}


---@return boolean
function ICachingBlockAccessor.get_LastChunkLoaded() end

function ICachingBlockAccessor.Begin() end

function ICachingBlockAccessor.Dispose() end


