---@meta

---@class ChunkLoadOptions
---@field KeepLoaded boolean If true, the chunk will never get unloaded unless UnloadChunkColumn() is called
---@field OnLoaded function Callback for when the chunks are ready and loaded
---@field ChunkGenParams ITreeAttribute Additional config to pass onto the world generators
ChunkLoadOptions = {}

---@return ChunkLoadOptions
function ChunkLoadOptions.ctor() end

---@return userdata
function ChunkLoadOptions.GetType() end

---@return string
function ChunkLoadOptions.ToString() end

---@param obj userdata
---@return boolean
function ChunkLoadOptions.Equals(obj) end

---@return number
function ChunkLoadOptions.GetHashCode() end


