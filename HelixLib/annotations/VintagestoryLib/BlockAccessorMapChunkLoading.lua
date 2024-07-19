---@meta

---@class BlockAccessorMapChunkLoading: BlockAccessorRelaxedBulkUpdate, BlockAccessorBase, BlockAccessorRelaxedBulkUpdate, IBlockAccessor, IBulkBlockAccessor
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
BlockAccessorMapChunkLoading = {}

---@param worldmap WorldMap
---@param worldAccessor IWorldAccessor Important interface to access the game world.
---@param synchronize boolean
---@param debug boolean
---@return BlockAccessorMapChunkLoading
function BlockAccessorMapChunkLoading.ctor(worldmap, worldAccessor, synchronize, debug) end

---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunksCol IWorldChunk[]
function BlockAccessorMapChunkLoading.SetChunks(chunkCoord, chunksCol) end

---@return table
function BlockAccessorMapChunkLoading.Commit() end

function BlockAccessorMapChunkLoading.FastCommit() end

---@param value function
function BlockAccessorMapChunkLoading.add_BeforeCommit(value) end

---@param value function
function BlockAccessorMapChunkLoading.remove_BeforeCommit(value) end

---@return boolean
function BlockAccessorMapChunkLoading.get_ReadFromStagedByDefault() end

---@param value boolean
function BlockAccessorMapChunkLoading.set_ReadFromStagedByDefault(value) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer number
---@return number
function BlockAccessorMapChunkLoading.GetBlockId(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
---@return number
function BlockAccessorMapChunkLoading.GetBlockId(pos, layer) end

---@param x number
---@param y number
---@param z number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetMostSolidBlock(x, y, z) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlockOrNull(posX, posY, posZ, layer) end

---@param newBlockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemstack? ItemStack
function BlockAccessorMapChunkLoading.SetBlock(newBlockId, pos, byItemstack) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
function BlockAccessorMapChunkLoading.SetBlock(blockId, pos, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.SetFluidBlock(blockId, pos) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorMapChunkLoading.SetDecor(block, pos, onFace) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return boolean
function BlockAccessorMapChunkLoading.SetDecor(block, pos, decorIndex) end

function BlockAccessorMapChunkLoading.Rollback() end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.ExchangeBlock(blockId, pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function BlockAccessorMapChunkLoading.BreakBlock(pos, byPlayer, dropQuantityMultiplier) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorMapChunkLoading.GetStagedBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMapChunkLoading.GetStagedBlockId(pos) end

---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunksCol IWorldChunk[]
function BlockAccessorMapChunkLoading.SetChunks(chunkCoord, chunksCol) end

---@param updatedBlocks table
function BlockAccessorMapChunkLoading.PostCommitCleanup(updatedBlocks) end

---@return number
function BlockAccessorMapChunkLoading.get_MapSizeX() end

---@return number
function BlockAccessorMapChunkLoading.get_MapSizeY() end

---@return number
function BlockAccessorMapChunkLoading.get_MapSizeZ() end

---@return number
function BlockAccessorMapChunkLoading.get_ChunkSize() end

---@return number
function BlockAccessorMapChunkLoading.get_RegionSize() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function BlockAccessorMapChunkLoading.get_MapSize() end

---@return number
function BlockAccessorMapChunkLoading.get_RegionMapSizeX() end

---@return number
function BlockAccessorMapChunkLoading.get_RegionMapSizeY() end

---@return number
function BlockAccessorMapChunkLoading.get_RegionMapSizeZ() end

---@return boolean
function BlockAccessorMapChunkLoading.get_UpdateSnowAccumMap() end

---@param value boolean
function BlockAccessorMapChunkLoading.set_UpdateSnowAccumMap(value) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorMapChunkLoading.GetBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMapChunkLoading.GetBlockId(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(pos, layer) end

---@param blockid number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(blockid) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetMostSolidBlock(pos) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunk IWorldChunk
---@param synchronize boolean
---@param relight boolean
---@param layer number
---@param byItemstack? ItemStack
function BlockAccessorMapChunkLoading.SetBlockInternal(blockId, pos, chunk, synchronize, relight, layer, byItemstack) end

---@param minpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorMapChunkLoading.WalkStructures(minpos, maxpos, onStructure) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorMapChunkLoading.WalkStructures(pos, onStructure) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
---@param centerOrder? boolean
function BlockAccessorMapChunkLoading.WalkBlocks(minPos, maxPos, onBlock, centerOrder) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorMapChunkLoading.SearchBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorMapChunkLoading.SearchFluidBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetBlock(code) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.SetBlock(blockId, pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function BlockAccessorMapChunkLoading.IsValidPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorMapChunkLoading.IsValidPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorMapChunkLoading.IsNotTraversable(pos) end

---@param x number
---@param y number
---@param z number
---@return boolean
function BlockAccessorMapChunkLoading.IsNotTraversable(x, y, z) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function BlockAccessorMapChunkLoading.GetChunk(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function BlockAccessorMapChunkLoading.GetChunkAtBlockPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IWorldChunk
function BlockAccessorMapChunkLoading.GetChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.MarkChunkDecorsModified(pos) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMapChunkLoading.GetMapChunk(chunkX, chunkZ) end

---@param chunkPos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMapChunkLoading.GetMapChunk(chunkPos) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function BlockAccessorMapChunkLoading.GetMapRegion(regionX, regionZ) end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function BlockAccessorMapChunkLoading.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorMapChunkLoading.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorMapChunkLoading.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function BlockAccessorMapChunkLoading.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.MarkBlockModified(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function BlockAccessorMapChunkLoading.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.TriggerNeighbourBlockUpdate(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorMapChunkLoading.GetLightLevel(posX, posY, posZ, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorMapChunkLoading.GetLightLevel(pos, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMapChunkLoading.GetTerrainMapheightAt(pos) end

---@param posX number
---@param posZ number
---@return number
function BlockAccessorMapChunkLoading.GetRainMapHeightAt(posX, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMapChunkLoading.GetRainMapHeightAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMapChunkLoading.GetMapChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function BlockAccessorMapChunkLoading.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function BlockAccessorMapChunkLoading.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function BlockAccessorMapChunkLoading.GetClimateAt(pos, climate) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMapChunkLoading.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMapChunkLoading.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
function BlockAccessorMapChunkLoading.DamageBlock(pos, facing, damage) end

---@param oldBlock Block Basic class for a placeable block
---@param newBlock Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mapchunk IMapChunk Holds 2 dimensional data for one chunk column
function BlockAccessorMapChunkLoading.UpdateRainHeightMap(oldBlock, newBlock, pos, mapchunk) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function BlockAccessorMapChunkLoading.GetLightRGBs(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorMapChunkLoading.GetLightRGBsAsInt(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function BlockAccessorMapChunkLoading.GetLightRGBs(pos) end

---@param chunkIndex3D number
---@return IWorldChunk
function BlockAccessorMapChunkLoading.GetChunk(chunkIndex3D) end

---@param x number
---@param y number
---@param z number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorMapChunkLoading.IsSideSolid(x, y, z, facing) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param horziontalSearchWidth? number
---@param verticalSearchWidth? number
---@return number
function BlockAccessorMapChunkLoading.GetDistanceToRainFall(pos, horziontalSearchWidth, verticalSearchWidth) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.MarkAbsorptionChanged(oldAbsorption, newAbsorption, pos) end

---@param oldLightHsv number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMapChunkLoading.RemoveBlockLight(oldLightHsv, pos) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetDecors(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubPosition number
---@return Block # Basic class for a placeable block
function BlockAccessorMapChunkLoading.GetDecor(position, faceAndSubPosition) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function BlockAccessorMapChunkLoading.BreakDecor(pos, side, faceAndSubposition) end

---@param chunkIndex number
---@param newDecors table
function BlockAccessorMapChunkLoading.SetDecorsBulk(chunkIndex, newDecors) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function BlockAccessorMapChunkLoading.GetBlockEntity(position) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function BlockAccessorMapChunkLoading.CreateMiniDimension(position) end

---@return userdata
function BlockAccessorMapChunkLoading.GetType() end

---@return string
function BlockAccessorMapChunkLoading.ToString() end

---@param obj userdata
---@return boolean
function BlockAccessorMapChunkLoading.Equals(obj) end

---@return number
function BlockAccessorMapChunkLoading.GetHashCode() end


