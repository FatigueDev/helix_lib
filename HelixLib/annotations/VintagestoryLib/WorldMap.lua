---@meta

---@class WorldMap
---@field World IWorldAccessor
---@field Logger ILogger
---@field Blocks IList`1
---@field BlocksByCode table
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field ChunkSize number
---@field ChunkSizeMask number
---@field MapSize Vec3i
---@field RegionSize number
---@field All table
---@field DebugClaimPrivileges boolean
---@field ChunkMapSizeX number
---@field ChunkMapSizeY number
---@field ChunkMapSizeZ number
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
WorldMap = {}


---@return IWorldAccessor # Important interface to access the game world.
function WorldMap.get_World() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function WorldMap.get_Logger() end

---@return IList`1
function WorldMap.get_Blocks() end

---@return table
function WorldMap.get_BlocksByCode() end

---@return number
function WorldMap.get_MapSizeX() end

---@return number
function WorldMap.get_MapSizeY() end

---@return number
function WorldMap.get_MapSizeZ() end

---@return number
function WorldMap.get_RegionMapSizeX() end

---@return number
function WorldMap.get_RegionMapSizeY() end

---@return number
function WorldMap.get_RegionMapSizeZ() end

---@return number
function WorldMap.get_ChunkSize() end

---@return number
function WorldMap.get_ChunkSizeMask() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function WorldMap.get_MapSize() end

---@return number
function WorldMap.get_RegionSize() end

---@return table
function WorldMap.get_All() end

---@return boolean
function WorldMap.get_DebugClaimPrivileges() end

---@return number
function WorldMap.get_ChunkMapSizeX() end

---@return number
function WorldMap.get_ChunkMapSizeY() end

---@return number
function WorldMap.get_ChunkMapSizeZ() end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function WorldMap.GetLightRGBsAsInt(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return Vec4f
function WorldMap.GetLightRGBSVec4f(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function WorldMap.GetLightHSVLevels(posX, posY, posZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return number
function WorldMap.LoadLightHSVLevels(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return LandClaim[]
function WorldMap.Get(pos) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return boolean
function WorldMap.TryAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function WorldMap.TestAccess(player, pos, accessFlag) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function WorldMap.TestBlockAccess(player, blockSel, accessType) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@return EnumWorldAccessResponse
function WorldMap.TestBlockAccess(player, blockSel, accessType, claimant) end

---@param forPlayer IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return string
function WorldMap.GetBlockingLandClaimant(forPlayer, pos, accessFlag) end

function WorldMap.RebuildLandClaimPartitions() end

---@param regionX number
---@param regionZ number
---@return number
function WorldMap.MapRegionIndex2D(regionX, regionZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function WorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param dim number
---@return number
function WorldMap.ChunkIndex3D(chunkX, chunkY, chunkZ, dim) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function WorldMap.ChunkIndex3D(pos) end

---@param cpos ChunkPos
---@return number
function WorldMap.ChunkIndex3D(cpos) end

---@param chunkX number
---@param chunkZ number
---@return number
function WorldMap.MapChunkIndex2D(chunkX, chunkZ) end

---@param chunkIndex3d number
---@return ChunkPos
function WorldMap.ChunkPosFromChunkIndex3D(chunkIndex3d) end

---@param index2d number
---@return ChunkPos
function WorldMap.ChunkPosFromChunkIndex2D(index2d) end

---@param lX number
---@param lY number
---@param lZ number
---@return number
function WorldMap.ChunkSizedIndex3D(lX, lY, lZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function WorldMap.IsValidPos(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function WorldMap.IsValidPos(posX, posY, posZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return boolean
function WorldMap.IsValidChunkPos(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param priority? boolean
---@param sunRelight? boolean
---@param OnRetesselated? function
---@param fireDirtyEvent? boolean
---@param edgeOnly? boolean
function WorldMap.MarkChunkDirty(chunkX, chunkY, chunkZ, priority, sunRelight, OnRetesselated, fireDirtyEvent, edgeOnly) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.TriggerNeighbourBlockUpdate(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param doRelight? boolean
function WorldMap.MarkBlockModified(pos, doRelight) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param OnRetesselated function
function WorldMap.MarkBlockDirty(pos, OnRetesselated) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param skipPlayer? IPlayer Represents a player
function WorldMap.MarkBlockDirty(pos, skipPlayer) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.MarkBlockEntityDirty(pos) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function WorldMap.IsMovementRestrictedPos(posX, posY, posZ) end

---@param chunkIndex3D number
---@return IWorldChunk
function WorldMap.GetChunk(chunkIndex3D) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function WorldMap.GetChunkNonLocking(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function WorldMap.GetChunk(chunkX, chunkY, chunkZ) end

---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function WorldMap.GetMapRegion(regionX, regionZ) end

---@param chunkX number
---@param chunkZ number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function WorldMap.GetMapChunk(chunkX, chunkZ) end

---@param posX number
---@param posY number
---@param posZ number
---@return IWorldChunk
function WorldMap.GetChunkAtPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return WorldChunk
function WorldMap.GetChunk(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.MarkDecorsDirty(pos) end

---@param markChunkPos? Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function WorldMap.PrintChunkMap(markChunkPos) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function WorldMap.SendSetBlock(blockId, posX, posY, posZ) end

---@param blockId number
---@param posX number
---@param posY number
---@param posZ number
function WorldMap.SendExchangeBlock(blockId, posX, posY, posZ) end

---@param oldblockid number
---@param newblockid number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.UpdateLighting(oldblockid, newblockid, pos) end

---@param oldLightHsV number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.RemoveBlockLight(oldLightHsV, pos) end

---@param oldAbsorption number
---@param newAbsorption number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.UpdateLightingAfterAbsorptionChange(oldAbsorption, newAbsorption, pos) end

---@param blockUpdates function
---@param doRelight boolean
function WorldMap.SendBlockUpdateBulk(blockUpdates, doRelight) end

---@param blockUpdates table
function WorldMap.SendBlockUpdateBulkMinimal(blockUpdates) end

---@param blockUpdates table
function WorldMap.UpdateLightingBulk(blockUpdates) end

---@param classname string
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function WorldMap.SpawnBlockEntity(classname, position, byItemStack) end

---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function WorldMap.SpawnBlockEntity(be) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function WorldMap.RemoveBlockEntity(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function WorldMap.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
---@return ClimateCondition
function WorldMap.GetClimateAt(pos, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param baseClimate ClimateCondition
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@return ClimateCondition
function WorldMap.GetClimateAt(pos, baseClimate, mode, totalDays) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param climate number
---@return ClimateCondition
function WorldMap.GetClimateAt(pos, climate) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function WorldMap.GetWindSpeedAt(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function WorldMap.GetWindSpeedAt(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param damage number
---@param dualCallByPlayer? IPlayer Represents a player
function WorldMap.DamageBlock(pos, facing, damage, dualCallByPlayer) end

---@param updatedDecorPositions function
function WorldMap.SendDecorUpdateBulk(updatedDecorPositions) end

---@return userdata
function WorldMap.GetType() end

---@return string
function WorldMap.ToString() end

---@param obj userdata
---@return boolean
function WorldMap.Equals(obj) end

---@return number
function WorldMap.GetHashCode() end


