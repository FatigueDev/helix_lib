---@meta

---@class IWorldIntersectionSupplier
---@field MapSize Vec3i
---@field blockAccessor IBlockAccessor
IWorldIntersectionSupplier = {}


---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function IWorldIntersectionSupplier.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function IWorldIntersectionSupplier.GetBlockIntersectionBoxes(pos) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function IWorldIntersectionSupplier.GetEntitiesAround(position, horRange, vertRange, matches) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IWorldIntersectionSupplier.IsValidPos(pos) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IWorldIntersectionSupplier.get_MapSize() end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IWorldIntersectionSupplier.get_blockAccessor() end


