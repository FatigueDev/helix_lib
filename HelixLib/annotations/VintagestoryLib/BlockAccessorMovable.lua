---@meta

---@class BlockAccessorMovable: BlockAccessorBase, BlockAccessorBase, IBlockAccessor, IMiniDimension
---@field CurrentPos EntityPos
---@field Dirty boolean
---@field CenterOfMass Vec3d
---@field TrackSelection boolean
---@field selectionTrackingOriginalPos BlockPos
---@field subDimensionId number
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
---@field selectionTrackingSubDimension_Client number
---@field subDimensionSize number
---@field originOffset number
---@field MaxMiniDimensions number
---@field subDimensionSizeInChunks number
---@field subDimensionIndexZMultiplier number
---@field dimensionSizeY number
---@field dimensionId number
---@field DefaultLightLevel number
BlockAccessorMovable = {}

---@param parent BlockAccessorBase
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return BlockAccessorMovable
function BlockAccessorMovable.ctor(parent, pos) end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function BlockAccessorMovable.get_CurrentPos() end

---@param value EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
function BlockAccessorMovable.set_CurrentPos(value) end

---@return boolean
function BlockAccessorMovable.get_Dirty() end

---@param value boolean
function BlockAccessorMovable.set_Dirty(value) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMovable.get_CenterOfMass() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMovable.set_CenterOfMass(value) end

---@return boolean
function BlockAccessorMovable.get_TrackSelection() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.get_selectionTrackingOriginalPos() end

---@param value BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.set_selectionTrackingOriginalPos(value) end

---@return number
function BlockAccessorMovable.get_subDimensionId() end

---@param value number
function BlockAccessorMovable.set_subDimensionId(value) end

---@param subId number
function BlockAccessorMovable.SetSubDimensionId(subId) end

---@param subId number
function BlockAccessorMovable.SetSelectionTrackingSubId_Server(subId) end

function BlockAccessorMovable.ClearChunks() end

function BlockAccessorMovable.UnloadUnusedServerChunks() end

---@param cyA number
---@param cyB number
---@return boolean
function BlockAccessorMovable.ChunkCoordsInSameDimension(cyA, cyB) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.AdjustPosForSubDimension(pos) end

---@param x number
---@param y number
---@param z number
function BlockAccessorMovable.MarkChunkDirty(x, y, z) end

---@param players IPlayer[] Represents a player
function BlockAccessorMovable.CollectChunksForSending(players) end

---@param chunk IWorldChunk
---@param index number
---@param player IPlayer Represents a player
function BlockAccessorMovable.MarkChunkForSendingToPlayersInRange(chunk, index, player) end

---@param dt number
---@return FastVec3d # Represents a vector of 3 doubles
function BlockAccessorMovable.GetRenderOffset(dt) end

---@param currentModelViewMatrix number
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function BlockAccessorMovable.GetRenderTransformMatrix(currentModelViewMatrix, playerPos) end

---@param result number
function BlockAccessorMovable.ApplyCurrentRotation(result) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer number
---@return number
function BlockAccessorMovable.GetBlockId(posX, posY, posZ, layer) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlockOrNull(posX, posY, posZ, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemstack ItemStack
function BlockAccessorMovable.SetBlock(blockId, pos, byItemstack) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
function BlockAccessorMovable.SetBlock(blockId, pos, layer) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.ExchangeBlock(blockId, pos) end

---@param cindex number
---@param chunk IWorldChunk
---@param world IWorldAccessor Important interface to access the game world.
function BlockAccessorMovable.ReceiveClientChunk(cindex, chunk, world) end

---@param world IWorldAccessor Important interface to access the game world.
function BlockAccessorMovable.RecalculateCenterOfMass(world) end

---@return number
function BlockAccessorMovable.get_MapSizeX() end

---@return number
function BlockAccessorMovable.get_MapSizeY() end

---@return number
function BlockAccessorMovable.get_MapSizeZ() end

---@return number
function BlockAccessorMovable.get_ChunkSize() end

---@return number
function BlockAccessorMovable.get_RegionSize() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function BlockAccessorMovable.get_MapSize() end

---@return number
function BlockAccessorMovable.get_RegionMapSizeX() end

---@return number
function BlockAccessorMovable.get_RegionMapSizeY() end

---@return number
function BlockAccessorMovable.get_RegionMapSizeZ() end

---@return boolean
function BlockAccessorMovable.get_UpdateSnowAccumMap() end

---@param value boolean
function BlockAccessorMovable.set_UpdateSnowAccumMap(value) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorMovable.GetBlockId(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMovable.GetBlockId(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(pos, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer number
---@return number
function BlockAccessorMovable.GetBlockId(pos, layer) end

---@param blockid number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(blockid) end

---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(posX, posY, posZ, layer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetMostSolidBlock(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetMostSolidBlock(posX, posY, posZ) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunk IWorldChunk
---@param synchronize boolean
---@param relight boolean
---@param layer number
---@param byItemstack? ItemStack
function BlockAccessorMovable.SetBlockInternal(blockId, pos, chunk, synchronize, relight, layer, byItemstack) end

---@param minpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorMovable.WalkStructures(minpos, maxpos, onStructure) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onStructure function
function BlockAccessorMovable.WalkStructures(pos, onStructure) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
---@param centerOrder? boolean
function BlockAccessorMovable.WalkBlocks(minPos, maxPos, onBlock, centerOrder) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorMovable.SearchBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onChunkMissing? function
function BlockAccessorMovable.SearchFluidBlocks(minPos, maxPos, onBlock, onChunkMissing) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetBlock(code) end

---@param blockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.SetBlock(blockId, pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function BlockAccessorMovable.IsValidPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorMovable.IsValidPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function BlockAccessorMovable.BreakBlock(pos, byPlayer, dropQuantityMultiplier) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockAccessorMovable.IsNotTraversable(pos) end

---@param x number
---@param y number
---@param z number
---@return boolean
function BlockAccessorMovable.IsNotTraversable(x, y, z) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function BlockAccessorMovable.GetChunk(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function BlockAccessorMovable.GetChunkAtBlockPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IWorldChunk
function BlockAccessorMovable.GetChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.MarkChunkDecorsModified(pos) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMovable.GetMapChunk(chunkX, chunkZ) end

---@param chunkPos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMovable.GetMapChunk(chunkPos) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function BlockAccessorMovable.GetMapRegion(regionX, regionZ) end

---@return table
function BlockAccessorMovable.Commit() end

function BlockAccessorMovable.Rollback() end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function BlockAccessorMovable.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorMovable.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function BlockAccessorMovable.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function BlockAccessorMovable.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.MarkBlockModified(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function BlockAccessorMovable.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.TriggerNeighbourBlockUpdate(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorMovable.GetLightLevel(posX, posY, posZ, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EnumLightLevelType Used in blockAccessor.GetLightLevel() to determine what kind of light level you want
---@return number
function BlockAccessorMovable.GetLightLevel(pos, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMovable.GetTerrainMapheightAt(pos) end

---@param posX number
---@param posZ number
---@return number
function BlockAccessorMovable.GetRainMapHeightAt(posX, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function BlockAccessorMovable.GetRainMapHeightAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function BlockAccessorMovable.GetMapChunkAtBlockPos(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function BlockAccessorMovable.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function BlockAccessorMovable.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function BlockAccessorMovable.GetClimateAt(pos, climate) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMovable.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockAccessorMovable.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
function BlockAccessorMovable.DamageBlock(pos, facing, damage) end

---@param oldBlock Block Basic class for a placeable block
---@param newBlock Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mapchunk IMapChunk Holds 2 dimensional data for one chunk column
function BlockAccessorMovable.UpdateRainHeightMap(oldBlock, newBlock, pos, mapchunk) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function BlockAccessorMovable.GetLightRGBs(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function BlockAccessorMovable.GetLightRGBsAsInt(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function BlockAccessorMovable.GetLightRGBs(pos) end

---@param chunkIndex3D number
---@return IWorldChunk
function BlockAccessorMovable.GetChunk(chunkIndex3D) end

---@param x number
---@param y number
---@param z number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorMovable.IsSideSolid(x, y, z, facing) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param horziontalSearchWidth? number
---@param verticalSearchWidth? number
---@return number
function BlockAccessorMovable.GetDistanceToRainFall(pos, horziontalSearchWidth, verticalSearchWidth) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.MarkAbsorptionChanged(oldAbsorption, newAbsorption, pos) end

---@param oldLightHsv number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockAccessorMovable.RemoveBlockLight(oldLightHsv, pos) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockAccessorMovable.SetDecor(block, pos, onFace) end

---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return boolean
function BlockAccessorMovable.SetDecor(block, pos, decorIndex) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function BlockAccessorMovable.GetDecors(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubPosition number
---@return Block # Basic class for a placeable block
function BlockAccessorMovable.GetDecor(position, faceAndSubPosition) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function BlockAccessorMovable.BreakDecor(pos, side, faceAndSubposition) end

---@param chunkIndex number
---@param newDecors table
function BlockAccessorMovable.SetDecorsBulk(chunkIndex, newDecors) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function BlockAccessorMovable.GetBlockEntity(position) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function BlockAccessorMovable.CreateMiniDimension(position) end

---@return userdata
function BlockAccessorMovable.GetType() end

---@return string
function BlockAccessorMovable.ToString() end

---@param obj userdata
---@return boolean
function BlockAccessorMovable.Equals(obj) end

---@return number
function BlockAccessorMovable.GetHashCode() end


