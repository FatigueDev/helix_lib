---@meta

-- Useful for setting many blocks at once efficiently
---@class IBulkBlockAccessor:  IBlockAccessor
---@field StagedBlocks table The full list of staged blocks that will get commited after calling Commit()
---@field ReadFromStagedByDefault boolean If set to true, the methods GetBlock() and GetBlockId() will behave like GetStagedBlockId() until the next commit
---@field BeforeCommit function
IBulkBlockAccessor = {}


---@param value function
function IBulkBlockAccessor.add_BeforeCommit(value) end

---@param value function
function IBulkBlockAccessor.remove_BeforeCommit(value) end

---@return table
function IBulkBlockAccessor.get_StagedBlocks() end

---@return boolean
function IBulkBlockAccessor.get_ReadFromStagedByDefault() end

---@param value boolean
function IBulkBlockAccessor.set_ReadFromStagedByDefault(value) end

-- Gets the block for a not yet commited block. If no block has been staged for this pos the original block is returned
---@param posX number
---@param posY number
---@param posZ number
---@return number
function IBulkBlockAccessor.GetStagedBlockId(posX, posY, posZ) end

-- Gets the block for a not yet commited block. If no block has been staged for this pos the original block is returned
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IBulkBlockAccessor.GetStagedBlockId(pos) end

-- Implemented only by BlockAccessorMapChunkLoading
---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunksCol IWorldChunk[]
function IBulkBlockAccessor.SetChunks(chunkCoord, chunksCol) end

---@param chunkIndex number
---@param newDecors table
function IBulkBlockAccessor.SetDecorsBulk(chunkIndex, newDecors) end

-- Used to fix certain things like flowing water from the edge of a pasted schematic/selection when undone or /we delete is used
---@param updatedBlocks table
function IBulkBlockAccessor.PostCommitCleanup(updatedBlocks) end


