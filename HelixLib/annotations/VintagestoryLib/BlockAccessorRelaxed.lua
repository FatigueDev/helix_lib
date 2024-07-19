---@meta

---@class BlockAccessorRelaxed: BlockAccessorBase, BlockAccessorBase, IBlockAccessor
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
BlockAccessorRelaxed = {}

---@param worldmap WorldMap
---@param worldAccessor IWorldAccessor Important interface to access the game world.
---@param synchronize boolean
---@param relight boolean
---@return BlockAccessorRelaxed
function BlockAccessorRelaxed.ctor(worldmap, worldAccessor, synchronize, relight) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer number
---@return number
function BlockAccessorRelaxed.GetBlockId(posX, posY, posZ, layer) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlockOrNull(posX, posY, posZ, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemstack? ItemStack
function BlockAccessorRelaxed.SetBlock(blockId, pos, byItemstack) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
function BlockAccessorRelaxed.SetBlock(blockId, pos, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.ExchangeBlock(blockId, pos) end

---@return number
function BlockAccessorRelaxed.get_MapSizeX() end

---@return number
function BlockAccessorRelaxed.get_MapSizeY() end

---@return number
function BlockAccessorRelaxed.get_MapSizeZ() end

---@return number
function BlockAccessorRelaxed.get_ChunkSize() end

---@return number
function BlockAccessorRelaxed.get_RegionSize() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function BlockAccessorRelaxed.get_MapSize() end

---@return number
function BlockAccessorRelaxed.get_RegionMapSizeX() end

---@return number
function BlockAccessorRelaxed.get_RegionMapSizeY() end

---@return number
function BlockAccessorRelaxed.get_RegionMapSizeZ() end

---@return boolean
function BlockAccessorRelaxed.get_UpdateSnowAccumMap() end

---@param value boolean
function BlockAccessorRelaxed.set_UpdateSnowAccumMap(value) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorRelaxed.GetBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxed.GetBlockId(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(pos, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
---@return number
function BlockAccessorRelaxed.GetBlockId(pos, layer) end

---@param blockid number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(blockid) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetMostSolidBlock(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetMostSolidBlock(posX, posY, posZ) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunk IWorldChunk
---@param synchronize boolean
---@param relight boolean
---@param layer number
---@param byItemstack? ItemStack
function BlockAccessorRelaxed.SetBlockInternal(blockId, pos, chunk, synchronize, relight, layer, byItemstack) end

---@param minpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorRelaxed.WalkStructures(minpos, maxpos, onStructure) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorRelaxed.WalkStructures(pos, onStructure) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
---@param centerOrder? boolean
function BlockAccessorRelaxed.WalkBlocks(minPos, maxPos, onBlock, centerOrder) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorRelaxed.SearchBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorRelaxed.SearchFluidBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetBlock(code) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.SetBlock(blockId, pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function BlockAccessorRelaxed.IsValidPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorRelaxed.IsValidPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function BlockAccessorRelaxed.BreakBlock(pos, byPlayer, dropQuantityMultiplier) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorRelaxed.IsNotTraversable(pos) end

---@param x number
---@param y number
---@param z number
---@return boolean
function BlockAccessorRelaxed.IsNotTraversable(x, y, z) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function BlockAccessorRelaxed.GetChunk(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function BlockAccessorRelaxed.GetChunkAtBlockPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IWorldChunk
function BlockAccessorRelaxed.GetChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.MarkChunkDecorsModified(pos) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxed.GetMapChunk(chunkX, chunkZ) end

---@param chunkPos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxed.GetMapChunk(chunkPos) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function BlockAccessorRelaxed.GetMapRegion(regionX, regionZ) end

---@return table
function BlockAccessorRelaxed.Commit() end

function BlockAccessorRelaxed.Rollback() end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function BlockAccessorRelaxed.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorRelaxed.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorRelaxed.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function BlockAccessorRelaxed.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.MarkBlockModified(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function BlockAccessorRelaxed.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.TriggerNeighbourBlockUpdate(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorRelaxed.GetLightLevel(posX, posY, posZ, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorRelaxed.GetLightLevel(pos, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxed.GetTerrainMapheightAt(pos) end

---@param posX number
---@param posZ number
---@return number
function BlockAccessorRelaxed.GetRainMapHeightAt(posX, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorRelaxed.GetRainMapHeightAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxed.GetMapChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function BlockAccessorRelaxed.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function BlockAccessorRelaxed.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function BlockAccessorRelaxed.GetClimateAt(pos, climate) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorRelaxed.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorRelaxed.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
function BlockAccessorRelaxed.DamageBlock(pos, facing, damage) end

---@param oldBlock Block Basic class for a placeable block
---@param newBlock Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mapchunk IMapChunk Holds 2 dimensional data for one chunk column
function BlockAccessorRelaxed.UpdateRainHeightMap(oldBlock, newBlock, pos, mapchunk) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function BlockAccessorRelaxed.GetLightRGBs(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorRelaxed.GetLightRGBsAsInt(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function BlockAccessorRelaxed.GetLightRGBs(pos) end

---@param chunkIndex3D number
---@return IWorldChunk
function BlockAccessorRelaxed.GetChunk(chunkIndex3D) end

---@param x number
---@param y number
---@param z number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorRelaxed.IsSideSolid(x, y, z, facing) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param horziontalSearchWidth? number
---@param verticalSearchWidth? number
---@return number
function BlockAccessorRelaxed.GetDistanceToRainFall(pos, horziontalSearchWidth, verticalSearchWidth) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.MarkAbsorptionChanged(oldAbsorption, newAbsorption, pos) end

---@param oldLightHsv number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorRelaxed.RemoveBlockLight(oldLightHsv, pos) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorRelaxed.SetDecor(block, pos, onFace) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return boolean
function BlockAccessorRelaxed.SetDecor(block, pos, decorIndex) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function BlockAccessorRelaxed.GetDecors(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubPosition number
---@return Block # Basic class for a placeable block
function BlockAccessorRelaxed.GetDecor(position, faceAndSubPosition) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function BlockAccessorRelaxed.BreakDecor(pos, side, faceAndSubposition) end

---@param chunkIndex number
---@param newDecors table
function BlockAccessorRelaxed.SetDecorsBulk(chunkIndex, newDecors) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function BlockAccessorRelaxed.GetBlockEntity(position) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function BlockAccessorRelaxed.CreateMiniDimension(position) end

---@return userdata
function BlockAccessorRelaxed.GetType() end

---@return string
function BlockAccessorRelaxed.ToString() end

---@param obj userdata
---@return boolean
function BlockAccessorRelaxed.Equals(obj) end

---@return number
function BlockAccessorRelaxed.GetHashCode() end


