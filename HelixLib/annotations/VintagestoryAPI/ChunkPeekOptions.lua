---@meta

---@class ChunkPeekOptions
---@field UntilPass EnumWorldGenPass Until which world gen pass to generate the chunk (default: Done)
---@field OnGenerated OnChunkPeekedDelegate Callback for when the chunks are ready and loaded
---@field ChunkGenParams ITreeAttribute Additional config to pass onto the world generators
ChunkPeekOptions = {}

---@return ChunkPeekOptions
function ChunkPeekOptions.ctor() end

---@return userdata
function ChunkPeekOptions.GetType() end

---@return string
function ChunkPeekOptions.ToString() end

---@param obj userdata
---@return boolean
function ChunkPeekOptions.Equals(obj) end

---@return number
function ChunkPeekOptions.GetHashCode() end


