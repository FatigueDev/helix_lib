---@meta

-- Provides read/write access to the blocks of a world
---@class IBlockAccessor
---@field ChunkSize number Width, Length and Height of a chunk
---@field RegionSize number Width and Length of a region in blocks
---@field MapSizeX number X Size of the world in blocks
---@field MapSizeY number Y Size of the world in blocks
---@field MapSizeZ number Z Size of the world in blocks
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field UpdateSnowAccumMap boolean Whether to update the snow accum map on a SetBlock()
---@field MapSize Vec3i Size of the world in blocks
IBlockAccessor = {}


---@return number
function IBlockAccessor.get_ChunkSize() end

---@return number
function IBlockAccessor.get_RegionSize() end

---@return number
function IBlockAccessor.get_MapSizeX() end

---@return number
function IBlockAccessor.get_MapSizeY() end

---@return number
function IBlockAccessor.get_MapSizeZ() end

---@return number
function IBlockAccessor.get_RegionMapSizeX() end

---@return number
function IBlockAccessor.get_RegionMapSizeY() end

---@return number
function IBlockAccessor.get_RegionMapSizeZ() end

---@return boolean
function IBlockAccessor.get_UpdateSnowAccumMap() end

---@param value boolean
function IBlockAccessor.set_UpdateSnowAccumMap(value) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IBlockAccessor.get_MapSize() end

-- Retrieve chunk at given chunk position (= divide block position by chunk size)
-- For dimension awareness, chunkY would need to be based on BlockPos.InternalY / chunksize or else explicitly include the dimensionId multiplied by GlobalConstants.DimensionSizeInChunks
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function IBlockAccessor.GetChunk(chunkX, chunkY, chunkZ) end

-- Retrieve chunk at given chunk position, returns null if chunk is not loaded
---@param chunkIndex3D number
---@return IWorldChunk
function IBlockAccessor.GetChunk(chunkIndex3D) end

-- Retrieves a map region at given region position, returns null if region is not loaded
---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function IBlockAccessor.GetMapRegion(regionX, regionZ) end

-- Retrieve chunk at given block position, returns null if chunk is not loaded
---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function IBlockAccessor.GetChunkAtBlockPos(posX, posY, posZ) end

-- Retrieve chunk at given block position, returns null if chunk is not loaded
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IWorldChunk
function IBlockAccessor.GetChunkAtBlockPos(pos) end

-- Get the block id of the block at the given world coordinate
---@param posX number
---@param posY number
---@param posZ number
---@return number
function IBlockAccessor.GetBlockId(posX, posY, posZ) end

-- Get the block id of the block at the given world coordinate
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IBlockAccessor.GetBlockId(pos) end

-- Get the block type of the block at the given world coordinate. Will never return null. For air blocks or invalid coordinates you'll get a block instance with block code "air" and id 0
-- Same as GetBlock with BlockLayersAccess.Default as layer
---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(posX, posY, posZ) end

-- Get the block type of the block at the given world coordinate. Will never return null. For air blocks or invalid coordinates you'll get a block instance with block code "air" and id 0
-- Same as GetBlock with BlockLayersAccess.Default as layer
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(pos) end

-- Get the block type of the block at the given world coordinate. Will never return null. For airblocks or invalid coordinates you'll get a block instance with block code "air" and id 0
-- Reads the block from the specified layer(s), see BlockLayersAccess documentation for details.
---@param x number
---@param y number
---@param z number
---@param layer number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(x, y, z, layer) end

-- Get block type at given world coordinate. Will never return null. For airblocks or invalid coordinates you'll get a block instance with block code "air" and id 0
-- Reads the block from the specified layer(s), see BlockLayersAccess documentation for details.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(pos, layer) end

-- Get the block type of the block at the given world coordinate. For invalid or unloaded coordinates this method returns null.
---@param x number
---@param y number
---@param z number
---@param layer? number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlockOrNull(x, y, z, layer) end

-- Same as GetBlock with BlockLayersAccess.MostSolid as layer
---@param x number
---@param y number
---@param z number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetMostSolidBlock(x, y, z) end

-- Same as GetBlock with BlockLayersAccess.MostSolid as layer
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetMostSolidBlock(pos) end

-- A method to iterate over blocks in an area. Less overhead than when calling GetBlock(pos) many times. If there is liquids in the liquid layer, the onBlock method will be called twice. Currently used for more efficient collision testing.
-- Currently NOT dimensionally aware
---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
---@param centerOrder? boolean
function IBlockAccessor.WalkBlocks(minPos, maxPos, onBlock, centerOrder) end

-- A method to search for a given block in an area
-- Currently NOT dimensionally aware
---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function IBlockAccessor.SearchBlocks(minPos, maxPos, onBlock, onChunkMissing) end

-- A method to search for a given fluid block in an area
-- Currently NOT dimensionally aware
---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function IBlockAccessor.SearchFluidBlocks(minPos, maxPos, onBlock, onChunkMissing) end

-- Calls given handler if it encounters one or more generated structure at given position (read from mapregions, assuming a max structure size of 256x256x256)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function IBlockAccessor.WalkStructures(pos, onStructure) end

-- Calls given handler if it encounters one or more generated structure that intersect any position inside minpos->maxpos (read from mapregions, assuming a max structure size of 256x256x256)
---@param minpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function IBlockAccessor.WalkStructures(minpos, maxpos, onStructure) end

-- Set a block at the given position. Use blockid 0 to clear that position from any blocks. Marks the chunk dirty so that it gets saved to disk during shutdown or next autosave.
-- If called with a fluid block, the fluid will automatically get set in the fluid layer, and the solid layer will be emptied.
---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.SetBlock(blockId, pos) end

-- Sets a block to given layer. Can only use "BlockLayersAccess.Solid" or "BlockLayersAccess.Liquid". Use id 0 to clear a block from given position. Marks the chunk dirty so that it gets saved to disk during shutdown or next autosave.
---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
function IBlockAccessor.SetBlock(blockId, pos, layer) end

-- Set a block at the given position. Use blockid 0 to clear that position from any blocks. Marks the chunk dirty so that it gets saved to disk during shutdown or next autosave.
-- If called with a fluid block, the fluid will automatically get set in the fluid layer, and the solid layer will be emptied.
---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemstack ItemStack
function IBlockAccessor.SetBlock(blockId, pos, byItemstack) end

-- Set a block at the given position without calling OnBlockRemoved or OnBlockPlaced, which prevents any block entity from being removed or placed. Marks the chunk dirty so that it gets saved to disk during shutdown or next autosave. Should only be used if you want to prevent any block entity deletion at this position.
-- This also, for example, does not change a block's reinforcement level, useful for openable blocks such as doors, gates etc
---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.ExchangeBlock(blockId, pos) end

-- Removes the block at given position and calls Block.GetDrops(), Block.OnBreakBlock() and Block.OnNeighbourBlockChange() for all neighbours. Drops the items that are return from Block.GetDrops()
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function IBlockAccessor.BreakBlock(pos, byPlayer, dropQuantityMultiplier) end

-- Client Side: Will render the block breaking decal on that block. If the remaining block resistance reaches 0, will call break block
-- Server Side: Broadcasts a package to all nearby clients to update the block damage of this block for rendering the decal (note: there is currently no server side list of current block damages, these are client side only at the moemnt)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
function IBlockAccessor.DamageBlock(pos, facing, damage) end

-- Get the Block object of a certain block ID. Returns null when not found.
---@param blockId number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(blockId) end

-- Get the Block object of for given block code. Returns null when not found.
---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetBlock(code) end

-- Spawn block entity at this position. Does not place it's corresponding block, you have to this yourself.
---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function IBlockAccessor.SpawnBlockEntity(classname, position, byItemStack) end

-- Adds pre-initialized block entity to the world. Does not call CreateBehaviors/Initialize/OnBlockPlaced on the block entity. This is a very low level method for block entity spawning, normally you'd want to use SpawnBlockEntity
---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IBlockAccessor.SpawnBlockEntity(be) end

-- Permanently removes any block entity at this postion. Does not remove it's corresponding block, you have to do this yourself. Marks the chunk dirty so that it gets saved to disk during shutdown or next autosave.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.RemoveBlockEntity(position) end

-- Retrieve the block entity at given position. Returns null if there is no block entity at this position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IBlockAccessor.GetBlockEntity(position) end

-- Retrieve the block entity at given position. Returns null if there is no block entity at this position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function IBlockAccessor.GetBlockEntity(position) end

-- Checks if the position is inside the maps boundaries
---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function IBlockAccessor.IsValidPos(posX, posY, posZ) end

-- Checks if the position is inside the maps boundaries
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IBlockAccessor.IsValidPos(pos) end

-- Checks if this position can be traversed by a normal player (returns false for outside map or not yet loaded chunks)
---@param x number
---@param y number
---@param z number
---@return boolean
function IBlockAccessor.IsNotTraversable(x, y, z) end

-- Checks if this position can be traversed by a normal player (returns false for outside map or not yet loaded chunks)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IBlockAccessor.IsNotTraversable(pos) end

-- Calling this method has no effect in normal block acessors except for:
-- - Bulk update block accessor: Sets all blocks, relight all affected one chunks in one go and send blockupdates to clients in a packed format.
-- - World gen block accessor: To Recalculate the heightmap in of all updated blocks in one go 
-- - Revertable block accessor: Same as bulk update block accessor plus stores a new history state.
---@return table
function IBlockAccessor.Commit() end

-- For the bulk update block accessor reverts all the SetBlocks currently called since the last Commit()
function IBlockAccessor.Rollback() end

-- Server side call: Resends the block entity data (if present) to all clients. Triggers a block changed event on the client once received , but will not redraw the chunk. Marks also the chunk dirty so that it gets saved to disk during shutdown or next autosave.
-- Client side call: No effect
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.MarkBlockEntityDirty(pos) end

-- Triggers the method OnNeighbourBlockChange() to all neighbour blocks at given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.TriggerNeighbourBlockUpdate(pos) end

-- Server side: Sends that block to the client (via bulk packet).  Through that packet the client will do a SetBlock on that position (which triggers a redraw if oldblockid != newblockid).
-- Client side: Triggers a block changed event and redraws the chunk
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function IBlockAccessor.MarkBlockDirty(pos, skipPlayer) end

-- Server side: Triggers a OnNeighbourBlockChange on that position and sends that block to the client (via bulk packet), through that packet the client will do a SetBlock on that position (which triggers a redraw if oldblockid != newblockid).
-- Client side: Triggers a block changed event and redraws the chunk. Deletes and re-create block entities
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.MarkBlockModified(pos) end

-- Server Side: Same as MarkBlockDirty()
-- Client Side: Same as MarkBlockDirty(), but also calls supplied delegate after the chunk has been re-retesselated. This can be used i.e. for block entities to dynamically switch between static models and dynamic models at exactly the right timing
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function IBlockAccessor.MarkBlockDirty(pos, OnRetesselated) end

-- Returns the light level (0..32) at given position. If the chunk at that position is not loaded this method will return the default sunlight value
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function IBlockAccessor.GetLightLevel(pos, type) end

-- Returns the light level (0..32) at given position. If the chunk at that position is not loaded this method will return the default sunlight value
-- Note this is not currently dimensionally aware
---@param x number
---@param y number
---@param z number
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function IBlockAccessor.GetLightLevel(x, y, z, type) end

-- Returns the light values at given position. XYZ component = block light rgb, W component = sun light brightness
-- Note this is not currently dimensionally aware
---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function IBlockAccessor.GetLightRGBs(posX, posY, posZ) end

-- Returns the light values at given position. XYZ component = block light rgb, W component = sun light brightness
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function IBlockAccessor.GetLightRGBs(pos) end

-- Returns the light values at given position. bit 0-23: block rgb light, bit 24-31: sun light brightness
---@param posX number
---@param posY number
---@param posZ number
---@return number
function IBlockAccessor.GetLightRGBsAsInt(posX, posY, posZ) end

-- Returns the topmost solid surface position at given x/z coordinate as it was during world generation. This map is not updated after placing/removing blocks
-- Note this is meaningless in dimensions other than the normal world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IBlockAccessor.GetTerrainMapheightAt(pos) end

-- Returns the topmost non-rain-permeable position at given x/z coordinate. This map is always updated after placing/removing blocks
-- Note this is meaningless in dimensions other than the normal world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IBlockAccessor.GetRainMapHeightAt(pos) end

-- Returns a number of how many blocks away there is rain fall. Does a cheap 2D bfs up to 4 blocks away. Returns 99 if none was found within 4 blocks
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param horziontalSearchWidth? number
---@param verticalSearchWidth? number
---@return number
function IBlockAccessor.GetDistanceToRainFall(pos, horziontalSearchWidth, verticalSearchWidth) end

-- Returns the topmost non-rain-permeable position at given x/z coordinate. This map is always updated after placing/removing blocks
-- Note this is meaningless in dimensions other than the normal world
---@param posX number
---@param posZ number
---@return number
function IBlockAccessor.GetRainMapHeightAt(posX, posZ) end

-- Returns the map chunk at given chunk position
---@param chunkPos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function IBlockAccessor.GetMapChunk(chunkPos) end

-- Returns the map chunk at given chunk position
---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function IBlockAccessor.GetMapChunk(chunkX, chunkZ) end

-- Returns the map chunk at given block position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function IBlockAccessor.GetMapChunkAtBlockPos(pos) end

-- Returns the position's current climate conditions
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function IBlockAccessor.GetClimateAt(pos, mode, totalDays) end

-- Returns the position's climate conditions at specified date, making use of previously obtained worldgen climate conditions
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function IBlockAccessor.GetClimateAt(pos, baseClimate, mode, totalDays) end

-- Fast shortcut method for the clound renderer
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function IBlockAccessor.GetClimateAt(pos, climate) end

-- Retrieves the wind speed for given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IBlockAccessor.GetWindSpeedAt(pos) end

-- Retrieves the wind speed for given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IBlockAccessor.GetWindSpeedAt(pos) end

-- Used by the chisel block when enough chiseled have been removed and the blocks light absorption changes as a result of that
---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.MarkAbsorptionChanged(oldAbsorption, newAbsorption, pos) end

-- Call this on OnBlockBroken() when your block entity modifies the blocks light range. That way the lighting task can still retrieve the block entity before its gone.
---@param oldLightHsV number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.RemoveBlockLight(oldLightHsV, pos) end

-- Add a decor block to the side of an existing block. Use air block (id 0) to remove a decor.
---@param block Block Basic class for a placeable block
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function IBlockAccessor.SetDecor(block, position, onFace) end

-- Add a decor block to a specific sub-position on the side of an existing block. Use air block (id 0) to remove a decor.
---@param block Block Basic class for a placeable block
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return boolean
function IBlockAccessor.SetDecor(block, position, decorIndex) end

-- Get a list of all decors at this position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function IBlockAccessor.GetDecors(position) end

-- Retrieves a single decor at given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return Block # Basic class for a placeable block
function IBlockAccessor.GetDecor(pos, decorIndex) end

-- Removes all decors at given position, drops items if set
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param decorIndex? Nullable`1
---@return boolean
function IBlockAccessor.BreakDecor(pos, side, decorIndex) end

-- Server: Marks this position as required for resending to the client
-- Client: No effect
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IBlockAccessor.MarkChunkDecorsModified(pos) end

-- Tests whether a side at the specified position is solid - testing both fluids layer (which could be ice) and solid blocks layer
---@param x number
---@param y number
---@param z number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function IBlockAccessor.IsSideSolid(x, y, z, facing) end

-- Used by World Edit to create previews, ships etc.
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function IBlockAccessor.CreateMiniDimension(position) end


