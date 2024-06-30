---@meta

---@class GameMain:  IWorldIntersectionSupplier
---@field WaterBlock Block
---@field World IWorldAccessor
---@field InteresectionTester AABBIntersectionTest
---@field MapSize Vec3i
---@field blockAccessor IBlockAccessor
---@field ItemsByCode table
GameMain = {}

---@return GameMain
function GameMain.ctor() end

---@return Block # Basic class for a placeable block
function GameMain.get_WaterBlock() end

---@param value Block Basic class for a placeable block
function GameMain.set_WaterBlock(value) end

---@return IWorldAccessor # Important interface to access the game world.
function GameMain.get_World() end

---@return number
function GameMain.RandomPitch() end

---@param code string
---@return RecipeRegistryBase
function GameMain.GetRecipeRegistry(code) end

---@param recipeRegistryCode string
---@return T
function GameMain.RegisterRecipeRegistry(recipeRegistryCode) end

---@return AABBIntersectionTest
function GameMain.get_InteresectionTester() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function GameMain.get_MapSize() end

---@param supplier IWorldIntersectionSupplier
---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(supplier, fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param range number
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(fromPos, pitch, yaw, range, blockSelection, entitySelection, bfilter, efilter) end

---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(ray, blockSelection, entitySelection, bfilter, efilter) end

---@param supplier IWorldIntersectionSupplier
---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(supplier, ray, blockSelection, entitySelection, bfilter, efilter) end

---@param player IPlayer Represents a player
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function GameMain.RayTraceForSelection(player, blockSelection, entitySelection, bfilter, efilter) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param pickingRange number
---@return Ray
function GameMain.GetPickingRay(pos, pitch, yaw, pickingRange) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Ray
function GameMain.GetPickingRay(fromPos, toPos) end

---@param basePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param collisionBoxes Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function GameMain.GetIntersectingEntities(basePos, collisionBoxes, matches) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function GameMain.GetEntitiesAround(position, horRange, vertRange, matches) end

---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param endPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function GameMain.GetEntitiesInsideCuboid(startPos, endPos, matches) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function GameMain.GetBlockIntersectionBoxes(pos) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function GameMain.get_blockAccessor() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function GameMain.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function GameMain.IsValidPos(pos) end

---@param itemCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Item # Represents an in game Item of Vintage Story
function GameMain.GetItem(itemCode) end

---@param blockCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function GameMain.GetBlock(blockCode) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Block[] # Basic class for a placeable block
function GameMain.SearchBlocks(wildcard) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Item[] # Represents an in game Item of Vintage Story
function GameMain.SearchItems(wildcard) end

---@param synchronize boolean
---@param relight boolean
---@return ICachingBlockAccessor
function GameMain.GetCachingBlockAccessor(synchronize, relight) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function GameMain.GetLockFreeBlockAccessor() end

---@param synchronize boolean
---@param relight boolean
---@param strict boolean
---@param debug? boolean
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function GameMain.GetBlockAccessor(synchronize, relight, strict, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function GameMain.GetBlockAccessorBulkUpdate(synchronize, relight, debug) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function GameMain.GetBlockAccessorBulkMinimalUpdate(synchronize, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBlockAccessorRevertable # Provides read/write access to the blocks of a world. 
function GameMain.GetBlockAccessorRevertable(synchronize, relight, debug) end

---@param synchronize boolean
---@param relight boolean
---@return IBlockAccessorPrefetch # Useful for when you have to scan multiple times over the same set of blocks
function GameMain.GetBlockAccessorPrefetch(synchronize, relight) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function GameMain.GetBlockAccessorMapChunkLoading(synchronize, debug) end

---@return userdata
function GameMain.GetType() end

---@return string
function GameMain.ToString() end

---@param obj userdata
---@return boolean
function GameMain.Equals(obj) end

---@return number
function GameMain.GetHashCode() end


