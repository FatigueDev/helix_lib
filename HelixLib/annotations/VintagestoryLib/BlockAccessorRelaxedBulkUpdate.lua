---@meta

---@class BlockAccessorRelaxedBulkUpdate: BlockAccessorBase, BlockAccessorBase, IBlockAccessor, IBulkBlockAccessor
---@field ReadFromStagedByDefault boolean
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field ChunkSize number
---@field RegionSize number
---@field MapSize Vec3i
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field UpdateSnowAccumMap boolean
---@field BeforeCommit function
---@field StagedBlocks table
---@field LightSources table
BlockAccessorRelaxedBulkUpdate = {}

---@param worldmap WorldMap
---@param worldAccessor IWorldAccessor Important interface to access the game world.
---@param synchronize boolean
---@param relight boolean
---@param debug boolean
---@return BlockAccessorRelaxedBulkUpdate
function BlockAccessorRelaxedBulkUpdate.ctor(worldmap, worldAccessor, synchronize, relight, debug) end

---@param value function
function BlockAccessorRelaxedBulkUpdate.add_BeforeCommit(value) end

---@param value function
function BlockAccessorRelaxedBulkUpdate.remove_BeforeCommit(value) end

---@return boolean
function BlockAccessorRelaxedBulkUpdate.get_ReadFromStagedByDefault() end

---@param value boolean
function BlockAccessorRelaxedBulkUpdate.set_ReadFromStagedByDefault(value) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetBlockId(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetBlockId(pos, layer) end

---@param x number
---@param y number
---@param z number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetMostSolidBlock(x, y, z) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlockOrNull(posX, posY, posZ, layer) end

---@param newBlockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemstack? ItemStack
function BlockAccessorRelaxedBulkUpdate.SetBlock(newBlockId, pos, byItemstack) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
function BlockAccessorRelaxedBulkUpdate.SetBlock(blockId, pos, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.SetFluidBlock(blockId, pos) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorRelaxedBulkUpdate.SetDecor(block, pos, onFace) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return boolean
function BlockAccessorRelaxedBulkUpdate.SetDecor(block, pos, decorIndex) end

---@return table
function BlockAccessorRelaxedBulkUpdate.Commit() end

function BlockAccessorRelaxedBulkUpdate.Rollback() end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.ExchangeBlock(blockId, pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function BlockAccessorRelaxedBulkUpdate.BreakBlock(pos, byPlayer, dropQuantityMultiplier) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetStagedBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxedBulkUpdate.GetStagedBlockId(pos) end

---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunksCol IWorldChunk[]
function BlockAccessorRelaxedBulkUpdate.SetChunks(chunkCoord, chunksCol) end

---@param updatedBlocks table
function BlockAccessorRelaxedBulkUpdate.PostCommitCleanup(updatedBlocks) end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_MapSizeX() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_MapSizeY() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_MapSizeZ() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_ChunkSize() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_RegionSize() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function BlockAccessorRelaxedBulkUpdate.get_MapSize() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_RegionMapSizeX() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_RegionMapSizeY() end

---@return number
function BlockAccessorRelaxedBulkUpdate.get_RegionMapSizeZ() end

---@return boolean
function BlockAccessorRelaxedBulkUpdate.get_UpdateSnowAccumMap() end

---@param value boolean
function BlockAccessorRelaxedBulkUpdate.set_UpdateSnowAccumMap(value) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxedBulkUpdate.GetBlockId(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(pos, layer) end

---@param blockid number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(blockid) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetMostSolidBlock(pos) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunk IWorldChunk
---@param synchronize boolean
---@param relight boolean
---@param layer number
---@param byItemstack? ItemStack
function BlockAccessorRelaxedBulkUpdate.SetBlockInternal(blockId, pos, chunk, synchronize, relight, layer, byItemstack) end

---@param minpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorRelaxedBulkUpdate.WalkStructures(minpos, maxpos, onStructure) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorRelaxedBulkUpdate.WalkStructures(pos, onStructure) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
---@param centerOrder? boolean
function BlockAccessorRelaxedBulkUpdate.WalkBlocks(minPos, maxPos, onBlock, centerOrder) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorRelaxedBulkUpdate.SearchBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorRelaxedBulkUpdate.SearchFluidBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetBlock(code) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.SetBlock(blockId, pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function BlockAccessorRelaxedBulkUpdate.IsValidPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorRelaxedBulkUpdate.IsValidPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorRelaxedBulkUpdate.IsNotTraversable(pos) end

---@param x number
---@param y number
---@param z number
---@return boolean
function BlockAccessorRelaxedBulkUpdate.IsNotTraversable(x, y, z) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function BlockAccessorRelaxedBulkUpdate.GetChunk(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function BlockAccessorRelaxedBulkUpdate.GetChunkAtBlockPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IWorldChunk
function BlockAccessorRelaxedBulkUpdate.GetChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.MarkChunkDecorsModified(pos) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxedBulkUpdate.GetMapChunk(chunkX, chunkZ) end

---@param chunkPos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxedBulkUpdate.GetMapChunk(chunkPos) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function BlockAccessorRelaxedBulkUpdate.GetMapRegion(regionX, regionZ) end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function BlockAccessorRelaxedBulkUpdate.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorRelaxedBulkUpdate.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorRelaxedBulkUpdate.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function BlockAccessorRelaxedBulkUpdate.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.MarkBlockModified(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function BlockAccessorRelaxedBulkUpdate.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.TriggerNeighbourBlockUpdate(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorRelaxedBulkUpdate.GetLightLevel(posX, posY, posZ, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorRelaxedBulkUpdate.GetLightLevel(pos, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxedBulkUpdate.GetTerrainMapheightAt(pos) end

---@param posX number
---@param posZ number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetRainMapHeightAt(posX, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxedBulkUpdate.GetRainMapHeightAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxedBulkUpdate.GetMapChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function BlockAccessorRelaxedBulkUpdate.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function BlockAccessorRelaxedBulkUpdate.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function BlockAccessorRelaxedBulkUpdate.GetClimateAt(pos, climate) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorRelaxedBulkUpdate.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorRelaxedBulkUpdate.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
function BlockAccessorRelaxedBulkUpdate.DamageBlock(pos, facing, damage) end

---@param oldBlock Block Basic class for a placeable block
---@param newBlock Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mapchunk IMapChunk Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxedBulkUpdate.UpdateRainHeightMap(oldBlock, newBlock, pos, mapchunk) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function BlockAccessorRelaxedBulkUpdate.GetLightRGBs(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetLightRGBsAsInt(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function BlockAccessorRelaxedBulkUpdate.GetLightRGBs(pos) end

---@param chunkIndex3D number
---@return IWorldChunk
function BlockAccessorRelaxedBulkUpdate.GetChunk(chunkIndex3D) end

---@param x number
---@param y number
---@param z number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorRelaxedBulkUpdate.IsSideSolid(x, y, z, facing) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param horziontalSearchWidth? number
---@param verticalSearchWidth? number
---@return number
function BlockAccessorRelaxedBulkUpdate.GetDistanceToRainFall(pos, horziontalSearchWidth, verticalSearchWidth) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.MarkAbsorptionChanged(oldAbsorption, newAbsorption, pos) end

---@param oldLightHsv number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxedBulkUpdate.RemoveBlockLight(oldLightHsv, pos) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetDecors(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubPosition number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxedBulkUpdate.GetDecor(position, faceAndSubPosition) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function BlockAccessorRelaxedBulkUpdate.BreakDecor(pos, side, faceAndSubposition) end

---@param chunkIndex number
---@param newDecors table
function BlockAccessorRelaxedBulkUpdate.SetDecorsBulk(chunkIndex, newDecors) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function BlockAccessorRelaxedBulkUpdate.GetBlockEntity(position) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function BlockAccessorRelaxedBulkUpdate.CreateMiniDimension(position) end

---@return userdata
function BlockAccessorRelaxedBulkUpdate.GetType() end

---@return string
function BlockAccessorRelaxedBulkUpdate.ToString() end

---@param obj userdata
---@return boolean
function BlockAccessorRelaxedBulkUpdate.Equals(obj) end

---@return number
function BlockAccessorRelaxedBulkUpdate.GetHashCode() end


