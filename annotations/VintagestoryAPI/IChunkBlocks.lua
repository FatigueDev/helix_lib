---@meta

---@class IChunkBlocks
---@field Item number
---@field Length number
IChunkBlocks = {}


---@param index3d number
---@return number
function IChunkBlocks.get_Item(index3d) end

---@param index3d number
---@param value number
function IChunkBlocks.set_Item(index3d, value) end

---@return number
function IChunkBlocks.get_Length() end

function IChunkBlocks.ClearBlocks() end

-- Same as ClearBlocks but initialises the chunkdata palette, so that SetBlockUnsafe can be used  (useful in worldgen)
function IChunkBlocks.ClearBlocksAndPrepare() end

-- Efficiently bulk-set a single block id in a chunk throughout a y-layer.  lenX will be ignored (always treated as 32), the y-position is specified in index3d, the width lenZ will be respected
---@param index3d number
---@param lenX number
---@param lenZ number
---@param value number
function IChunkBlocks.SetBlockBulk(index3d, lenX, lenZ, value) end

-- Not threadsafe, used only in cases where we know that the chunk already has a palette (e.g. in worldgen when replacing rock with other blocks)
---@param index3d number
---@param value number
function IChunkBlocks.SetBlockUnsafe(index3d, value) end

---@param index3d number
function IChunkBlocks.SetBlockAir(index3d) end

-- Used to place blocks into the fluid layer instead of the solid blocks layer; calling code must do this
---@param index3d number
---@param value number
function IChunkBlocks.SetFluid(index3d, value) end

---@param index3d number
---@param layer number
---@return number
function IChunkBlocks.GetBlockId(index3d, layer) end

---@param index3d number
---@return number
function IChunkBlocks.GetFluid(index3d) end

-- Like get (i.e. this[]) but not threadsafe - only for use where setting and getting is guaranteed to be all on the same thread (e.g. during worldgen)
---@param index3d number
---@return number
function IChunkBlocks.GetBlockIdUnsafe(index3d) end

-- Enter a locked section for bulk block reads from this ChunkData, using Unsafe read methods
function IChunkBlocks.TakeBulkReadLock() end

-- Leave a locked section for bulk block reads from this ChunkData, using Unsafe read methods
function IChunkBlocks.ReleaseBulkReadLock() end

-- Does this chunk contain any examples of the specified block?
-- (If the result is false, this is a very fast lookup because it quickly scans the blocks palette, not every block individually.)
---@param blockId number
---@return boolean
function IChunkBlocks.ContainsBlock(blockId) end

-- Populates the list with all block IDs which are present in this chunk.  The list may contain false positives (i.e. blocks which used to be here but were removed) so that's why it's called a "Fuzzy" list.
-- There will be no false negatives, therefore useful as a first-pass filter when scanning chunks for various types of block e.g. ITickable
---@param reusableList table
function IChunkBlocks.FuzzyListBlockIds(reusableList) end


