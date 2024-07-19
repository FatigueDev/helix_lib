---@meta

---@class ServerWorldMap: WorldMap, WorldMap, IChunkProvider, ILandClaimAPI
---@field Logger ILogger
---@field Blocks IList`1
---@field BlocksByCode table
---@field ChunkSize number
---@field RegionSize number
---@field MapSize Vec3i
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field World IWorldAccessor
---@field ChunkSizeMask number
---@field All table
---@field DebugClaimPrivileges boolean
---@field ChunkMapSizeX number
---@field ChunkMapSizeY number
---@field ChunkMapSizeZ number
---@field chunkIlluminatorWorldGen ChunkIlluminator
---@field chunkIlluminatorMainThread ChunkIlluminator
---@field StrictBlockAccess IBlockAccessor
---@field RelaxedBlockAccess IBlockAccessor
---@field BulkBlockAccess BlockAccessorRelaxedBulkUpdate
---@field RawRelaxedBlockAccess IBlockAccessor
---@field PrefetchBlockAccess BlockAccessorPrefetch
---@field LightingTasksLock userdata
---@field LightingTasks Queue`1
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
ServerWorldMap = {}

---@param server ServerMain
---@return ServerWorldMap
function ServerWorldMap.ctor(server) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ServerWorldMap.get_Logger() end

---@return IList`1
function ServerWorldMap.get_Blocks() end

---@return table
function ServerWorldMap.get_BlocksByCode() end

---@return number
function ServerWorldMap.get_ChunkSize() end

---@return number
function ServerWorldMap.get_RegionSize() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ServerWorldMap.get_MapSize() end

---@return number
function ServerWorldMap.get_MapSizeX() end

---@return number
function ServerWorldMap.get_MapSizeY() end

---@return number
function ServerWorldMap.get_MapSizeZ() end

---@return number
function ServerWorldMap.get_RegionMapSizeX() end

---@return number
function ServerWorldMap.get_RegionMapSizeY() end

---@return number
function ServerWorldMap.get_RegionMapSizeZ() end

---@return IWorldAccessor # Important interface to access the game world.
function ServerWorldMap.get_World() end

---@return number
function ServerWorldMap.get_ChunkSizeMask() end

---@param sizex number
---@param sizey number
---@param sizez number
function ServerWorldMap.Init(sizex, sizey, sizez) end

---@param index number
---@return ChunkPos
function ServerWorldMap.MapRegionPosFromIndex2D(index) end

---@param index number
---@param x number
---@param z number
function ServerWorldMap.MapRegionPosFromIndex2D(index, x, z) end

---@param chunkIndex2d number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ServerWorldMap.MapChunkPosFromChunkIndex2D(chunkIndex2d) end

---@param positions table
---@return table
function ServerWorldMap.PositionsToUniqueChunks(positions) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function ServerWorldMap.GetChunkAtPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return WorldChunk
function ServerWorldMap.GetChunk(pos) end

---@param index3d number
---@return IWorldChunk
function ServerWorldMap.GetChunk(index3d) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return ServerChunk
function ServerWorldMap.GetServerChunk(chunkX, chunkY, chunkZ) end

---@param chunkIndex3d number
---@return ServerChunk
function ServerWorldMap.GetServerChunk(chunkIndex3d) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function ServerWorldMap.GetChunk(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param notRecentlyAccessed? boolean
---@return IWorldChunk
function ServerWorldMap.GetUnpackedChunkFast(chunkX, chunkY, chunkZ, notRecentlyAccessed) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function ServerWorldMap.GetChunkNonLocking(chunkX, chunkY, chunkZ) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function ServerWorldMap.GetMapRegion(regionX, regionZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function ServerWorldMap.GetMapRegion(pos) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function ServerWorldMap.GetMapChunk(chunkX, chunkZ) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function ServerWorldMap.SendSetBlock(blockId, posX, posY, posZ) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function ServerWorldMap.SendExchangeBlock(blockId, posX, posY, posZ) end

---@param updatedDecorPositions function
function ServerWorldMap.SendDecorUpdateBulk(updatedDecorPositions) end

---@param blockUpdates function
---@param doRelight boolean
function ServerWorldMap.SendBlockUpdateBulk(blockUpdates, doRelight) end

---@param updates table
function ServerWorldMap.SendBlockUpdateBulkMinimal(updates) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
---@param clientId number
function ServerWorldMap.SendBlockUpdateExcept(blockId, posX, posY, posZ, clientId) end

---@param posX number
---@param posZ number
---@return number
function ServerWorldMap.GetTerrainGenSurfacePosY(posX, posZ) end

---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockRange number
function ServerWorldMap.MarkChunksDirty(blockPos, blockRange) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param priority? boolean
---@param sunRelight? boolean
---@param OnRetesselated? function
---@param fireDirtyEvent? boolean
---@param edgeOnly? boolean
function ServerWorldMap.MarkChunkDirty(chunkX, chunkY, chunkZ, priority, sunRelight, OnRetesselated, fireDirtyEvent, edgeOnly) end

---@param oldblockid number
---@param newblockid number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.UpdateLighting(oldblockid, newblockid, pos) end

---@param oldLightHsV number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.RemoveBlockLight(oldLightHsV, pos) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.UpdateLightingAfterAbsorptionChange(oldAbsorption, newAbsorption, pos) end

---@param blockUpdates table
function ServerWorldMap.UpdateLightingBulk(blockUpdates) end

---@param posX number
---@param posY number
---@param posZ number
---@return Nullable`1
function ServerWorldMap.GetMaxTimeAwareLightLevelAt(posX, posY, posZ) end

---@param markChunkPos? Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ServerWorldMap.PrintChunkMap(markChunkPos) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ServerWorldMap.GetBlockEntity(position) end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function ServerWorldMap.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ServerWorldMap.SpawnBlockEntity(be) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.RemoveBlockEntity(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param doRelight? boolean
function ServerWorldMap.MarkBlockModified(pos, doRelight) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onRetesselated function
function ServerWorldMap.MarkBlockDirty(pos, onRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function ServerWorldMap.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.MarkBlockEntityDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.MarkDecorsDirty(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.TriggerNeighbourBlockUpdate(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function ServerWorldMap.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function ServerWorldMap.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function ServerWorldMap.GetClimateAt(pos, climate) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ServerWorldMap.GetWindSpeedAt(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ServerWorldMap.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param temperatureRainfallOnly boolean
---@return ClimateCondition
function ServerWorldMap.getWorldGenClimateAt(pos, temperatureRainfallOnly) end

---@param conds ClimateCondition
---@param mapregion IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerWorldMap.AddWorldGenForestShrub(conds, mapregion, pos) end

---@param index3d number
---@return number
function ServerWorldMap.ChunkIndex3dToIndex2d(index3d) end

---@param rainfall number
---@param y number
---@return number
function ServerWorldMap.GetRainFall(rainfall, y) end

---@param temp number
---@param distToSealevel number
---@return number
function ServerWorldMap.GetScaledAdjustedTemperatureFloat(temp, distToSealevel) end

---@param rain number
---@param scaledTemp number
---@param posYRel number
---@return number
function ServerWorldMap.GetFertility(rain, scaledTemp, posYRel) end

---@param rain number
---@param unscaledTemp number
---@param posYRel number
---@return number
function ServerWorldMap.GetFertilityFromUnscaledTemp(rain, unscaledTemp, posYRel) end

---@param temperature number
---@return number
function ServerWorldMap.DescaleTemperature(temperature) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
---@param dualCallByPlayer? IPlayer Represents a player
function ServerWorldMap.DamageBlock(pos, facing, damage, dualCallByPlayer) end

---@param claim LandClaim
function ServerWorldMap.Add(claim) end

---@param claim LandClaim
---@return boolean
function ServerWorldMap.Remove(claim) end

---@param oldClaim LandClaim
---@param newClaim LandClaim
function ServerWorldMap.UpdateClaim(oldClaim, newClaim) end

---@param allClaims function
---@param addClaims function
function ServerWorldMap.BroadcastClaims(allClaims, addClaims) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param allClaims function
---@param addClaims function
function ServerWorldMap.SendClaims(player, allClaims, addClaims) end

---@return table
function ServerWorldMap.get_All() end

---@return boolean
function ServerWorldMap.get_DebugClaimPrivileges() end

---@return number
function ServerWorldMap.get_ChunkMapSizeX() end

---@return number
function ServerWorldMap.get_ChunkMapSizeY() end

---@return number
function ServerWorldMap.get_ChunkMapSizeZ() end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ServerWorldMap.GetLightRGBsAsInt(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function ServerWorldMap.GetLightRGBSVec4f(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ServerWorldMap.GetLightHSVLevels(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function ServerWorldMap.LoadLightHSVLevels(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return LandClaim[]
function ServerWorldMap.Get(pos) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return boolean
function ServerWorldMap.TryAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function ServerWorldMap.TestAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function ServerWorldMap.TestBlockAccess(player, blockSel, accessType) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@return EnumWorldAccessResponse
function ServerWorldMap.TestBlockAccess(player, blockSel, accessType, claimant) end

---@param forPlayer IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return string
function ServerWorldMap.GetBlockingLandClaimant(forPlayer, pos, accessFlag) end

function ServerWorldMap.RebuildLandClaimPartitions() end

---@param regionX number
---@param regionZ number
---@return number
function ServerWorldMap.MapRegionIndex2D(regionX, regionZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function ServerWorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param dim number
---@return number
function ServerWorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ, dim) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function ServerWorldMap.ChunkIndex3D(pos) end

---@param cpos ChunkPos
---@return number
function ServerWorldMap.ChunkIndex3D(cpos) end

---@param chunkX number
---@param chunkZ number
---@return number
function ServerWorldMap.MapChunkIndex2D(chunkX, chunkZ) end

---@param chunkIndex3d number
---@return ChunkPos
function ServerWorldMap.ChunkPosFromChunkIndex3D(chunkIndex3d) end

---@param index2d number
---@return ChunkPos
function ServerWorldMap.ChunkPosFromChunkIndex2D(index2d) end

---@param lX number
---@param lY number
---@param lZ number
---@return number
function ServerWorldMap.ChunkSizedIndex3D(lX, lY, lZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ServerWorldMap.IsValidPos(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function ServerWorldMap.IsValidPos(posX, posY, posZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return boolean
function ServerWorldMap.IsValidChunkPos(chunkX, chunkY, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function ServerWorldMap.IsMovementRestrictedPos(posX, posY, posZ) end

---@return userdata
function ServerWorldMap.GetType() end

---@return string
function ServerWorldMap.ToString() end

---@param obj userdata
---@return boolean
function ServerWorldMap.Equals(obj) end

---@return number
function ServerWorldMap.GetHashCode() end


