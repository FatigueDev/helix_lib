---@meta

---@class ClientWorldMap: WorldMap, WorldMap, IChunkProvider, ILandClaimAPI
---@field MapSize Vec3i
---@field Logger ILogger
---@field ChunkSize number
---@field ChunkSizeMask number
---@field MapRegionSizeInChunks number
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field Blocks IList`1
---@field BlocksByCode table
---@field World IWorldAccessor
---@field RegionSize number
---@field All table
---@field DebugClaimPrivileges boolean
---@field ChunkMapSizeX number
---@field ChunkMapSizeY number
---@field ChunkMapSizeZ number
---@field ClientChunkSize number
---@field ServerChunkSize number
---@field MapChunkSize number
---@field regionSize number
---@field MaxViewDistance number
---@field LandClaims table
---@field RolesByCode table
---@field RelaxedBlockAccess IBlockAccessor
---@field CachingBlockAccess IBlockAccessor
---@field BulkBlockAccess IBulkBlockAccessor
---@field NoRelightBulkBlockAccess IBlockAccessor
---@field BulkMinimalBlockAccess IBlockAccessor
---@field LightingTasksLock userdata
---@field LightingTasks Queue`1
---@field seaLevel number
---@field index3dMulX number
---@field chunkMapSizeY number
---@field index3dMulZ number
---@field BlockLightLevels number
---@field BlockLightLevelsByte number
---@field hueLevels number
---@field satLevels number
---@field SunLightLevels number
---@field SunLightLevelsByte number
---@field SunBrightness number
---@field LandClaimByRegion table
ClientWorldMap = {}

---@param game ClientMain
---@return ClientWorldMap
function ClientWorldMap.ctor(game) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ClientWorldMap.get_MapSize() end

function ClientWorldMap.OnLightLevelsReceived() end

function ClientWorldMap.OnBlocksAndLightLevelsReceived() end

function ClientWorldMap.BlockTexturesLoaded() end

---@return number
function ClientWorldMap.LoadColorMaps() end

function ClientWorldMap.PopulateColorMaps() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientWorldMap.get_Logger() end

---@return number
function ClientWorldMap.get_ChunkSize() end

---@return number
function ClientWorldMap.get_ChunkSizeMask() end

---@return number
function ClientWorldMap.get_MapRegionSizeInChunks() end

---@return number
function ClientWorldMap.get_MapSizeX() end

---@return number
function ClientWorldMap.get_MapSizeY() end

---@return number
function ClientWorldMap.get_MapSizeZ() end

---@return number
function ClientWorldMap.get_RegionMapSizeX() end

---@return number
function ClientWorldMap.get_RegionMapSizeY() end

---@return number
function ClientWorldMap.get_RegionMapSizeZ() end

---@return IList`1
function ClientWorldMap.get_Blocks() end

---@return table
function ClientWorldMap.get_BlocksByCode() end

---@return IWorldAccessor # Important interface to access the game world.
function ClientWorldMap.get_World() end

---@return number
function ClientWorldMap.get_RegionSize() end

---@return table
function ClientWorldMap.get_All() end

---@return boolean
function ClientWorldMap.get_DebugClaimPrivileges() end

---@param chunkX number
---@param chunkZ number
---@return number
function ClientWorldMap.MapRegionIndex2DFromClientChunkCoord(chunkX, chunkZ) end

---@param chunkX number
---@param chunkZ number
---@return number
function ClientWorldMap.LoadOrCreateLerpedClimateMap(chunkX, chunkZ) end

---@param block Block Basic class for a placeable block
---@param posX number
---@param posY number
---@param posZ number
---@return ColorMapData
function ClientWorldMap.getColorMapData(block, posX, posY, posZ) end

---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb boolean
---@return number
function ClientWorldMap.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, posX, posY, posZ, flipRb) end

---@param climateMap ColorMap
---@param seasonMap ColorMap
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb boolean
---@return number
function ClientWorldMap.ApplyColorMapOnRgba(climateMap, seasonMap, color, posX, posY, posZ, flipRb) end

---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param rain number
---@param temp number
---@param flipRb boolean
---@param seasonYPixelRel? number
---@param seasonXOffset? number
---@return number
function ClientWorldMap.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, rain, temp, flipRb, seasonYPixelRel, seasonXOffset) end

---@param climateMap ColorMap
---@param seasonMap ColorMap
---@param color number
---@param rain number
---@param temp number
---@param flipRb boolean
---@param seasonYPixelRel number
---@param seasonXOffset number
---@param heightAboveSealevel number
---@return number
function ClientWorldMap.ApplyColorMapOnRgba(climateMap, seasonMap, color, rain, temp, flipRb, seasonYPixelRel, seasonXOffset, heightAboveSealevel) end

---@param posX number
---@param posZ number
---@return number
function ClientWorldMap.GetClimate(posX, posZ) end

---@param map number
---@param inRegionX number
---@param inRegionZ number
---@return number
function ClientWorldMap.GetClimateFast(map, inRegionX, inRegionZ) end

---@param temperature number
---@return number
function ClientWorldMap.DescaleTemperature(temperature) end

---@param rainfall number
---@param y number
---@return number
function ClientWorldMap.GetRainFall(rainfall, y) end

---@param temp number
---@param distToSealevel number
---@return number
function ClientWorldMap.GetAdjustedTemperature(temp, distToSealevel) end

---@param index3d number
---@return IWorldChunk
function ClientWorldMap.GetChunk(index3d) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return WorldChunk
function ClientWorldMap.GetChunk(pos) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function ClientWorldMap.GetChunk(chunkX, chunkY, chunkZ) end

---@param subDimensionId number
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function ClientWorldMap.GetOrCreateDimension(subDimensionId, pos) end

---@param cx number
---@param cy number
---@param cz number
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function ClientWorldMap.GetOrCreateDimension(cx, cy, cz) end

---@param index3d number
---@param priority? boolean
---@param relight? boolean
---@param edgeOnly? boolean
function ClientWorldMap.SetChunkDirty(index3d, priority, relight, edgeOnly) end

---@param cx number
---@param cy number
---@param cz number
---@param priority? boolean
---@param sunRelight? boolean
---@param OnRetesselated? function
---@param fireEvent? boolean
---@param edgeOnly? boolean
function ClientWorldMap.MarkChunkDirty(cx, cy, cz, priority, sunRelight, OnRetesselated, fireEvent, edgeOnly) end

---@param cx number
---@param cy number
---@param cz number
function ClientWorldMap.SetChunksAroundDirty(cx, cy, cz) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return boolean
function ClientWorldMap.IsValidChunkPosFast(chunkX, chunkY, chunkZ) end

---@param cx number
---@param cy number
---@param cz number
---@return boolean
function ClientWorldMap.IsChunkRendered(cx, cy, cz) end

---@param x number
---@param y number
---@param z number
---@return number
function ClientWorldMap.UncheckedGetBlockId(x, y, z) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function ClientWorldMap.GetChunkNonLocking(chunkX, chunkY, chunkZ) end

---@param mapSize Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param regionMapSize Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ClientWorldMap.OnMapSizeReceived(mapSize, regionMapSize) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function ClientWorldMap.GetChunkAtPos(posX, posY, posZ) end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function ClientWorldMap.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClientWorldMap.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClientWorldMap.GetBlockEntity(position) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function ClientWorldMap.SendSetBlock(blockId, posX, posY, posZ) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function ClientWorldMap.SendExchangeBlock(blockId, posX, posY, posZ) end

---@param oldblockid number
---@param newblockid number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.UpdateLighting(oldblockid, newblockid, pos) end

---@param oldLightHsV number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.RemoveBlockLight(oldLightHsV, pos) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.UpdateLightingAfterAbsorptionChange(oldAbsorption, newAbsorption, pos) end

---@param blockUpdates table
function ClientWorldMap.UpdateLightingBulk(blockUpdates) end

---@param blockUpdates function
---@param doRelight boolean
function ClientWorldMap.SendBlockUpdateBulk(blockUpdates, doRelight) end

---@param blockUpdates table
function ClientWorldMap.SendBlockUpdateBulkMinimal(blockUpdates) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function ClientWorldMap.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param doRelight? boolean
function ClientWorldMap.MarkBlockModified(pos, doRelight) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function ClientWorldMap.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.TriggerNeighbourBlockUpdate(pos) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function ClientWorldMap.GetMapRegion(regionX, regionZ) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function ClientWorldMap.GetMapChunk(chunkX, chunkZ) end

---@param regionX number
---@param regionZ number
function ClientWorldMap.UnloadMapRegion(regionX, regionZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function ClientWorldMap.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function ClientWorldMap.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function ClientWorldMap.GetClimateAt(pos, climate) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientWorldMap.GetWindSpeedAt(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientWorldMap.GetWindSpeedAt(pos) end

---@param temp number
---@param distToSealevel number
---@return number
function ClientWorldMap.GetScaledAdjustedTemperatureFloat(temp, distToSealevel) end

---@param rain number
---@param scaledTemp number
---@param posYRel number
---@return number
function ClientWorldMap.GetFertility(rain, scaledTemp, posYRel) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
---@param dualCallByPlayer? IPlayer Represents a player
function ClientWorldMap.DamageBlock(pos, facing, damage, dualCallByPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientWorldMap.MarkDecorsDirty(pos) end

---@param claim LandClaim
function ClientWorldMap.Add(claim) end

---@param claim LandClaim
---@return boolean
function ClientWorldMap.Remove(claim) end

---@param updatedDecorPositions function
function ClientWorldMap.SendDecorUpdateBulk(updatedDecorPositions) end

---@return number
function ClientWorldMap.get_ChunkMapSizeX() end

---@return number
function ClientWorldMap.get_ChunkMapSizeY() end

---@return number
function ClientWorldMap.get_ChunkMapSizeZ() end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ClientWorldMap.GetLightRGBsAsInt(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function ClientWorldMap.GetLightRGBSVec4f(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ClientWorldMap.GetLightHSVLevels(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ClientWorldMap.LoadLightHSVLevels(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return LandClaim[]
function ClientWorldMap.Get(pos) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return boolean
function ClientWorldMap.TryAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function ClientWorldMap.TestAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function ClientWorldMap.TestBlockAccess(player, blockSel, accessType) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@return EnumWorldAccessResponse
function ClientWorldMap.TestBlockAccess(player, blockSel, accessType, claimant) end

---@param forPlayer IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return string
function ClientWorldMap.GetBlockingLandClaimant(forPlayer, pos, accessFlag) end

function ClientWorldMap.RebuildLandClaimPartitions() end

---@param regionX number
---@param regionZ number
---@return number
function ClientWorldMap.MapRegionIndex2D(regionX, regionZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function ClientWorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param dim number
---@return number
function ClientWorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ, dim) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function ClientWorldMap.ChunkIndex3D(pos) end

---@param cpos ChunkPos
---@return number
function ClientWorldMap.ChunkIndex3D(cpos) end

---@param chunkX number
---@param chunkZ number
---@return number
function ClientWorldMap.MapChunkIndex2D(chunkX, chunkZ) end

---@param chunkIndex3d number
---@return ChunkPos
function ClientWorldMap.ChunkPosFromChunkIndex3D(chunkIndex3d) end

---@param index2d number
---@return ChunkPos
function ClientWorldMap.ChunkPosFromChunkIndex2D(index2d) end

---@param lX number
---@param lY number
---@param lZ number
---@return number
function ClientWorldMap.ChunkSizedIndex3D(lX, lY, lZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ClientWorldMap.IsValidPos(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function ClientWorldMap.IsValidPos(posX, posY, posZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return boolean
function ClientWorldMap.IsValidChunkPos(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function ClientWorldMap.IsMovementRestrictedPos(posX, posY, posZ) end

---@param markChunkPos? Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ClientWorldMap.PrintChunkMap(markChunkPos) end

---@return userdata
function ClientWorldMap.GetType() end

---@return string
function ClientWorldMap.ToString() end

---@param obj userdata
---@return boolean
function ClientWorldMap.Equals(obj) end

---@return number
function ClientWorldMap.GetHashCode() end


