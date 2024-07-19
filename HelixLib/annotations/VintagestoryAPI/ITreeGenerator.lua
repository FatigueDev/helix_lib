---@meta

---@class ITreeGenerator
ITreeGenerator = {}


---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param treeGenParams TreeGenParams
function ITreeGenerator.GrowTree(blockAccessor, pos, treeGenParams) end


