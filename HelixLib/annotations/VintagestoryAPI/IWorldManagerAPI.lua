---@meta

-- Methods to modify the game world
---@class IWorldManagerAPI
---@field AllLoadedMapchunks table Returns a (cloned) list of all currently loaded map chunks. The key is the 2d index of the map chunk, can be turned into an x/z coord
---@field AllLoadedMapRegions table Returns a (cloned) list of all currently loaded map regions. The key is the 2d index of the map region, can be turned into an x/z coord
---@field AllLoadedChunks table Returns a (cloned) list of all currently loaded chunks. The key is the 3d index of the chunk, can be turned into an x/y/z coord. Warning: This locks the loaded chunk dictionary during the clone, preventing other threads from updating it. In other words: Using this method often will have a significant performance impact.
---@field CurrentGeneratingChunkCount number Amount of chunk columns currently in the generating queue
---@field ChunkDeletionsInQueue number
---@field SaveGame ISaveGame The worlds savegame object. If you change these values they will be permanently stored
---@field CurrentPlayStyle PlayStyle The currently selected playstyle
---@field AutoGenerateChunks boolean Completely disables automatic generation of chunks that normally builds up a radius of chunks around the player. 
---@field SendChunks boolean Disables sending of normal chunks to all players except for force loaded ones using ForceLoadChunkColumn
---@field MapSizeX number Width of the current world
---@field MapSizeY number Height of the current world
---@field MapSizeZ number Length of the current world
---@field RegionSize number Width/Length/Height in blocks of a region on the server
---@field ChunkSize number Width/Length/Height in blocks of a chunk on the server
---@field Seed number Get the seed used to generate the current world
---@field CurrentWorldName string The current world filename
---@field DefaultSpawnPosition number Retrieves the default spawnpoint (x/y/z coordinate)
IWorldManagerAPI = {}


---@return table
function IWorldManagerAPI.get_AllLoadedMapchunks() end

---@return table
function IWorldManagerAPI.get_AllLoadedMapRegions() end

---@return table
function IWorldManagerAPI.get_AllLoadedChunks() end

---@return number
function IWorldManagerAPI.get_CurrentGeneratingChunkCount() end

---@return number
function IWorldManagerAPI.get_ChunkDeletionsInQueue() end

---@return ISaveGame
function IWorldManagerAPI.get_SaveGame() end

---@return PlayStyle
function IWorldManagerAPI.get_CurrentPlayStyle() end

-- Allows setting a 32 float array that defines the brightness of each block light level. Has to be set before any players join or any chunks are generated.
---@param lightLevels number
function IWorldManagerAPI.SetBlockLightLevels(lightLevels) end

-- Allows setting a 32 float array that defines the brightness of each sun light level. Has to be set before any players join or any chunks are generated.
---@param lightLevels number
function IWorldManagerAPI.SetSunLightLevels(lightLevels) end

-- Sets the default light range of sunlight. Default is 24. Has to be set before any players join or any chunks are generated.
---@param lightlevel number
function IWorldManagerAPI.SetSunBrightness(lightlevel) end

-- Sets the default sea level for the world to be generated. Currently used by the client to calculate the correct temperature/rainfall values for climate tinting.
---@param sealevel number
function IWorldManagerAPI.SetSeaLevel(sealevel) end

-- Gets the Server map region at given coordinate. Returns null if it's not loaded or does not exist yet
---@param regionX number
---@param regionZ number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function IWorldManagerAPI.GetMapRegion(regionX, regionZ) end

-- Gets the Server map region at given coordinate. Returns null if it's not loaded or does not exist yet
---@param index2d number
---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function IWorldManagerAPI.GetMapRegion(index2d) end

-- Gets the Server map chunk at given coordinate. Returns null if it's not loaded or does not exist yet
---@param chunkX number
---@param chunkZ number
---@return IServerMapChunk
function IWorldManagerAPI.GetMapChunk(chunkX, chunkZ) end

-- Gets the Server map chunk at given coordinate index. Returns null if it's not loaded or does not exist yet
---@param index2d number
---@return IMapChunk # Holds 2 dimensional data for one chunk column
function IWorldManagerAPI.GetMapChunk(index2d) end

-- Gets the Server chunk at given coordinate. Returns null if it's not loaded or does not exist yet
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IServerChunk # Some extra methods available for server side chunks
function IWorldManagerAPI.GetChunk(chunkX, chunkY, chunkZ) end

-- Gets the Server chunk at given coordinate. Returns null if it's not loaded or does not exist yet
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return IServerChunk # Some extra methods available for server side chunks
function IWorldManagerAPI.GetChunk(pos) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function IWorldManagerAPI.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@param regionX number
---@param regionZ number
---@return number
function IWorldManagerAPI.MapRegionIndex2D(regionX, regionZ) end

---@param posX number
---@param posZ number
---@return number
function IWorldManagerAPI.MapRegionIndex2DByBlockPos(posX, posZ) end

---@param index2d number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IWorldManagerAPI.MapRegionPosFromIndex2D(index2d) end

---@param index2d number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function IWorldManagerAPI.MapChunkPosFromChunkIndex2D(index2d) end

---@param chunkX number
---@param chunkZ number
---@return number
function IWorldManagerAPI.MapChunkIndex2D(chunkX, chunkZ) end

-- Gets the Server chunk at given coordinate. Returns null if it's not loaded or does not exist yet
---@param index3d number
---@return IServerChunk # Some extra methods available for server side chunks
function IWorldManagerAPI.GetChunk(index3d) end

-- Returns a number that is guaranteed to be unique for the current world every time it is called. Curently use for entity herding behavior.
---@return number
function IWorldManagerAPI.GetNextUniqueId() end

---@return boolean
function IWorldManagerAPI.get_AutoGenerateChunks() end

---@param value boolean
function IWorldManagerAPI.set_AutoGenerateChunks(value) end

---@return boolean
function IWorldManagerAPI.get_SendChunks() end

---@param value boolean
function IWorldManagerAPI.set_SendChunks(value) end

-- Asynchronly high priority load a chunk column at given coordinate. 
---@param chunkX number
---@param chunkZ number
---@param options? ChunkLoadOptions
function IWorldManagerAPI.LoadChunkColumnFast(chunkX, chunkZ, options) end

-- Asynchronly high priority load a chunk column at given coordinate. 
---@param chunkX number
---@param chunkZ number
---@param options? ChunkLoadOptions
function IWorldManagerAPI.LoadChunkColumnPriority(chunkX, chunkZ, options) end

-- Asynchronly high priority load an area of chunk columns at given coordinates. Make sure that X1<=X2 and Z1<=Z2
---@param chunkX1 number
---@param chunkZ1 number
---@param chunkX2 number
---@param chunkZ2 number
---@param options? ChunkLoadOptions
function IWorldManagerAPI.LoadChunkColumnFast(chunkX1, chunkZ1, chunkX2, chunkZ2, options) end

-- Asynchronly high priority load an area of chunk columns at given coordinates. Make sure that X1<=X2 and Z1<=Z2
---@param chunkX1 number
---@param chunkZ1 number
---@param chunkX2 number
---@param chunkZ2 number
---@param options? ChunkLoadOptions
function IWorldManagerAPI.LoadChunkColumnPriority(chunkX1, chunkZ1, chunkX2, chunkZ2, options) end

-- Asynchronly normal priority load a chunk column at given coordinate. No effect when already loaded.
---@param chunkX number
---@param chunkZ number
---@param keepLoaded? boolean
function IWorldManagerAPI.LoadChunkColumn(chunkX, chunkZ, keepLoaded) end

-- Generates chunk at given coordinate, completely bypassing any existing world data and caching methods, in other words generates, a chunk from scratch without keeping it in the list of loaded chunks
---@param chunkX number
---@param chunkZ number
---@param options ChunkPeekOptions
function IWorldManagerAPI.PeekChunkColumn(chunkX, chunkZ, options) end

-- Asynchrounly checks if this chunk is currently loaded or in the savegame database. Calls the callback method with true or false once done looking up. Does not load the actual chunk data.
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param onTested function
function IWorldManagerAPI.TestChunkExists(chunkX, chunkY, chunkZ, onTested) end

-- Asynchrounly checks if this map chunk is currently loaded or in the savegame database. Calls the callback method with true or false once done looking up. Does not load the actual map chunk data.
---@param chunkX number
---@param chunkZ number
---@param onTested function
function IWorldManagerAPI.TestMapChunkExists(chunkX, chunkZ, onTested) end

-- Asynchrounly checks if this mapregion is currently loaded or in the savegame database. Calls the callback method with true or false once done looking up. Does not load the actual map region data.
---@param regionX number
---@param regionZ number
---@param onTested function
function IWorldManagerAPI.TestMapRegionExists(regionX, regionZ, onTested) end

-- Send or Resend a loaded chunk to all connected players. Has no effect when the chunk is not loaded
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param onlyIfInRange? boolean
function IWorldManagerAPI.BroadcastChunk(chunkX, chunkY, chunkZ, onlyIfInRange) end

-- Returns true if the server sent chunk at given coords to player and has it not unloaded yet
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@return boolean
function IWorldManagerAPI.HasChunk(chunkX, chunkY, chunkZ, player) end

-- Send or Resend a loaded chunk to a connected player. Has no effect when the chunk is not loaded
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param onlyIfInRange? boolean
function IWorldManagerAPI.SendChunk(chunkX, chunkY, chunkZ, player, onlyIfInRange) end

-- Send or resent a loaded map chunk to all connected players. Has no effect when the map chunk is not loaded
---@param chunkX number
---@param chunkZ number
---@param onlyIfInRange boolean
function IWorldManagerAPI.ResendMapChunk(chunkX, chunkZ, onlyIfInRange) end

-- Unloads a column of chunks at given coordinate independent of any nearby players and sends an appropriate unload packet to the player
---@param chunkX number
---@param chunkZ number
function IWorldManagerAPI.UnloadChunkColumn(chunkX, chunkZ) end

-- Deletes a column of chunks at given coordinate from the save file. Also deletes the map chunk at the same coordinate (but keeps the map region). Also unloads the chunk in the same process. Also deletes all entities in this chunk
---@param chunkX number
---@param chunkZ number
function IWorldManagerAPI.DeleteChunkColumn(chunkX, chunkZ) end

-- Deletes a map region at given coordinate from the save file
---@param regionX number
---@param regionZ number
function IWorldManagerAPI.DeleteMapRegion(regionX, regionZ) end

---@return number
function IWorldManagerAPI.get_MapSizeX() end

---@return number
function IWorldManagerAPI.get_MapSizeY() end

---@return number
function IWorldManagerAPI.get_MapSizeZ() end

-- Finds the first y position that is solid ground to stand on. Returns null if the chunk is not loaded.
---@param posX number
---@param posZ number
---@return Nullable`1
function IWorldManagerAPI.GetSurfacePosY(posX, posZ) end

---@return number
function IWorldManagerAPI.get_RegionSize() end

---@return number
function IWorldManagerAPI.get_ChunkSize() end

---@return number
function IWorldManagerAPI.get_Seed() end

---@return string
function IWorldManagerAPI.get_CurrentWorldName() end

---@return number
function IWorldManagerAPI.get_DefaultSpawnPosition() end

-- Permanently sets the default spawnpoint
---@param x number
---@param y number
---@param z number
function IWorldManagerAPI.SetDefaultSpawnPosition(x, y, z) end

-- Get the ID of a certain BlockType
---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function IWorldManagerAPI.GetBlockId(name) end

-- Floods the chunk column with sunlight. Only works on full chunk columns.
---@param chunks IWorldChunk[]
---@param chunkX number
---@param chunkZ number
function IWorldManagerAPI.SunFloodChunkColumnForWorldGen(chunks, chunkX, chunkZ) end

-- Spreads the chunk columns light into neighbour chunks and vice versa. Only works on full chunk columns.
---@param chunks IWorldChunk[]
---@param chunkX number
---@param chunkZ number
function IWorldManagerAPI.SunFloodChunkColumnNeighboursForWorldGen(chunks, chunkX, chunkZ) end

-- Does a complete relighting of the cuboid deliminated by given min/max pos. Completely resends all affected chunk columns to all connected nearby clients.
---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IWorldManagerAPI.FullRelight(minPos, maxPos) end

-- Retrieve a customized interface to access blocks in the loaded game world.
---@param synchronize boolean
---@param relight boolean
---@param strict boolean
---@param debug? boolean
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IWorldManagerAPI.GetBlockAccessor(synchronize, relight, strict, debug) end

-- Retrieve a customized interface to access blocks in the loaded game world. Does not to relight/sync on a SetBlock until Commit() is called. On commit all touched blocks are relit/synced at once. This method should be used when setting many blocks (e.g. tree generation, explosion, etc.).
---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function IWorldManagerAPI.GetBlockAccessorBulkUpdate(synchronize, relight, debug) end

-- Same as GetBlockAccessorBulkUpdate, additionally, each Commit() stores the previous state and you can perform undo/redo operations on these. 
---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBlockAccessorRevertable # Provides read/write access to the blocks of a world. 
function IWorldManagerAPI.GetBlockAccessorRevertable(synchronize, relight, debug) end

-- Same as GetBlockAccessor but you have to call PrefetchBlocks() before using GetBlock(). It pre-loads all blocks in given area resulting in faster GetBlock() access
---@param synchronize boolean
---@param relight boolean
---@return IBlockAccessorPrefetch # Useful for when you have to scan multiple times over the same set of blocks
function IWorldManagerAPI.GetBlockAccessorPrefetch(synchronize, relight) end

-- Same as the normal block accessor but remembers the previous chunk that was accessed. This can give you a 10-50% performance boosts when you scan many blocks in tight loops
-- DONT FORGET: Call .Begin() before getting/setting in a tight loop. Not calling it can cause the game to crash
---@param synchronize boolean
---@param relight boolean
---@return ICachingBlockAccessor
function IWorldManagerAPI.GetCachingBlockAccessor(synchronize, relight) end


