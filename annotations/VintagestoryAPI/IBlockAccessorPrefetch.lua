---@meta

-- Useful for when you have to scan multiple times over the same set of blocks
---@class IBlockAccessorPrefetch:  IBlockAccessor
IBlockAccessorPrefetch = {}


-- Pre-loads all blocks inside given area which can then be accessed very quickly using .GetBlock(). 
-- This method must be called before using GetBlock()
---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessorPrefetch.PrefetchBlocks(minPos, maxPos) end


