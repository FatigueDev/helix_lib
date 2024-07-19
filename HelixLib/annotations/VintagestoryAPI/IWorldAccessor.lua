---@meta

-- Important interface to access the game world.
---@class IWorldAccessor
---@field Config ITreeAttribute The current world config
---@field DefaultSpawnPosition EntityPos The default spawn position as sent by the server (usually the map middle). Does not take player specific spawn point into account
---@field FrameProfiler FrameProfilerUtil Gets the frame profiler utility.
---@field Api ICoreAPI The api interface
---@field Claims ILandClaimAPI The land claiming api interface
---@field LoadedChunkIndices number Returns a list all loaded chunk positions in the form of a long index. Code to turn that into x/y/z coords: Vec3i coords = new Vec3i(    (int)(chunkIndex3d % ChunkMapSizeX),    (int)(chunkIndex3d / ((long)ChunkMapSizeX * ChunkMapSizeZ)),    (int)((chunkIndex3d / ChunkMapSizeX) % ChunkMapSizeZ) ); Retrieving the list is not a very fast process, not suggested to be called every frame
---@field LoadedMapChunkIndices number Returns a list all loaded chunk positions in the form of a long index
---@field BlockLightLevels number The currently configured block light brightness levels
---@field SunLightLevels number The currently configured sun light brightness levels
---@field SeaLevel number The currently configured sea level (y-coordinate)
---@field Seed number The world seed. Accessible on the server and the client
---@field SavegameIdentifier string A globally unique identifier for this savegame
---@field SunBrightness number The currently configured max sun light level
---@field EntityDebugMode boolean Whether the current side (client/server) is in entity debug mode
---@field AssetManager IAssetManager Loaded game assets
---@field Logger ILogger Logging Utility
---@field Side EnumAppSide The current side (client/server)
---@field BlockAccessor IBlockAccessor Access blocks and other world data from loaded chunks, fault tolerant
---@field BulkBlockAccessor IBulkBlockAccessor Fault tolerant bulk block access to the worlds block data. Since this is a single bulk block access instance the cached data is shared for everything accessing this method, hence should only be accessed from the main thread and any changed comitted within the same game tick. You can however use the WorldManager api to get your own instance of a bulk block accessor
---@field ClassRegistry IClassRegistryAPI Interface to create instance of certain classes
---@field Calendar IGameCalendar Interface to access the game calendar. On the server side only available after run stage 'LoadGamePre' (before that it is null)
---@field CollisionTester CollisionTester For collision testing in the main thread
---@field Rand Random Just a random number generator. Makes use of ThreadLocal for thread safety.
---@field ElapsedMilliseconds number Amount of milliseconds ellapsed since startup
---@field Collectibles table List of all loaded blocks and items without placeholders
---@field Blocks IList`1 List of all loaded blocks. The array index is the block id. Some may be null or placeholders (then block.code is null). Client-side none are null, what was null return as air blocks.
---@field Items IList`1 List of all loaded items. The array index is the item id. Some may be placeholders (then item.code is null).  Server-side, some may be null; client-side, a check for item == null is not necessary.
---@field EntityTypes table List of all loaded entity types. 
---@field EntityTypeCodes table List of the codes of all loaded entity types, in the AssetLocation short string format (e.g. "creature" for entities with domain game:, "domain:creature" for entities with other domains) 
---@field GridRecipes table List of all loaded crafting recipes
---@field DefaultEntityTrackingRange number The range in blocks within a client will receive regular updates for an entity
---@field AllOnlinePlayers IPlayer[] Gets a list of all online players. Warning: Also returns currently connecting player whose player data may not have been fully initialized. Check for player.ConnectionState to avoid these.
---@field AllPlayers IPlayer[] Gets a list of all players that connected to this server at least once. When called client side you will receive the same as AllOnlinePlayers
---@field InteresectionTester AABBIntersectionTest Utility for testing intersections. Only access from main thread.
IWorldAccessor = {}


---@return ITreeAttribute # Represents a List of nestable Attributes
function IWorldAccessor.get_Config() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function IWorldAccessor.get_DefaultSpawnPosition() end

---@return FrameProfilerUtil
function IWorldAccessor.get_FrameProfiler() end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function IWorldAccessor.get_Api() end

---@return ILandClaimAPI
function IWorldAccessor.get_Claims() end

---@return number
function IWorldAccessor.get_LoadedChunkIndices() end

---@return number
function IWorldAccessor.get_LoadedMapChunkIndices() end

---@return number
function IWorldAccessor.get_BlockLightLevels() end

---@return number
function IWorldAccessor.get_SunLightLevels() end

---@return number
function IWorldAccessor.get_SeaLevel() end

---@return number
function IWorldAccessor.get_Seed() end

---@return string
function IWorldAccessor.get_SavegameIdentifier() end

---@return number
function IWorldAccessor.get_SunBrightness() end

---@return boolean
function IWorldAccessor.get_EntityDebugMode() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function IWorldAccessor.get_AssetManager() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function IWorldAccessor.get_Logger() end

---@return EnumAppSide
function IWorldAccessor.get_Side() end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IWorldAccessor.get_BlockAccessor() end

---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function IWorldAccessor.get_BulkBlockAccessor() end

---@return IClassRegistryAPI # Interface for creating instances
function IWorldAccessor.get_ClassRegistry() end

---@return IGameCalendar # Main API for retrieving anything calender or astronomy related
function IWorldAccessor.get_Calendar() end

---@return CollisionTester
function IWorldAccessor.get_CollisionTester() end

---@return Random
function IWorldAccessor.get_Rand() end

---@return number
function IWorldAccessor.get_ElapsedMilliseconds() end

---@return table
function IWorldAccessor.get_Collectibles() end

---@return IList`1
function IWorldAccessor.get_Blocks() end

---@return IList`1
function IWorldAccessor.get_Items() end

---@return table
function IWorldAccessor.get_EntityTypes() end

---@return table
function IWorldAccessor.get_EntityTypeCodes() end

---@return table
function IWorldAccessor.get_GridRecipes() end

-- Retrieve a previously registered recipe registry
---@param code string
---@return RecipeRegistryBase
function IWorldAccessor.GetRecipeRegistry(code) end

---@return number
function IWorldAccessor.get_DefaultEntityTrackingRange() end

-- Retrieve the item class from given item id
---@param itemId number
---@return Item # Represents an in game Item of Vintage Story
function IWorldAccessor.GetItem(itemId) end

-- Retrieve the block class from given block id
---@param blockId number
---@return Block # Basic class for a placeable block
function IWorldAccessor.GetBlock(blockId) end

-- Returns all blocktypes matching given wildcard
---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Block[] # Basic class for a placeable block
function IWorldAccessor.SearchBlocks(wildcard) end

-- Returns all item types matching given wildcard
---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Item[] # Represents an in game Item of Vintage Story
function IWorldAccessor.SearchItems(wildcard) end

-- Retrieve the item class from given item code. Will return null if the item does not exist.
---@param itemCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Item # Represents an in game Item of Vintage Story
function IWorldAccessor.GetItem(itemCode) end

-- Retrieve the block class from given block code. Will return null if the block does not exist. Logs a warning if block does not exist
---@param blockCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function IWorldAccessor.GetBlock(blockCode) end

-- Retrieve the entity class from given entity code. Will return null if the entity does not exist.
---@param entityCode AssetLocation Defines a complete path to an assets, including it's domain
---@return EntityProperties
function IWorldAccessor.GetEntityType(entityCode) end

-- Spawns a dropped itemstack at given position. Will immediately disappear if stacksize==0
-- Returns the entity spawned (may be null!)
---@param itemstack ItemStack
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param velocity? Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Entity # The basic class for all entities in the game
function IWorldAccessor.SpawnItemEntity(itemstack, position, velocity) end

-- Creates a new entity. It's the responsibility of the given Entity to call set it's EntityType.
-- This should be done inside it's Initialize method before base.Initialize is called.
---@param entity Entity The basic class for all entities in the game
function IWorldAccessor.SpawnEntity(entity) end

-- Retrieve all entities within given range and given matcher method. If now matcher method is supplied, all entities are returned.
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function IWorldAccessor.GetEntitiesAround(position, horRange, vertRange, matches) end

-- Retrieve all entities within a cuboid bound by startPos and endPos. If now matcher method is supplied, all entities are returned.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param endPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function IWorldAccessor.GetEntitiesInsideCuboid(startPos, endPos, matches) end

-- Retrieve all players within given range and given matcher method. This method is faster than when using GetEntitiesAround with a matcher for players
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return IPlayer[] # Represents a player
function IWorldAccessor.GetPlayersAround(position, horRange, vertRange, matches) end

-- Retrieve the nearest entity within given range and given matcher method
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity # The basic class for all entities in the game
function IWorldAccessor.GetNearestEntity(position, horRange, vertRange, matches) end

-- Retrieve an entity by its unique id, returns null if no such entity exists or hasn't been loaded
---@param entityId number
---@return Entity # The basic class for all entities in the game
function IWorldAccessor.GetEntityById(entityId) end

-- Retrieves the first found entity that intersects any of the supplied collisionboxes offseted by basePos. This is a helper method for you to determine if you can place a block at given position. You can also implement it yourself with intersection testing and GetEntitiesAround()
---@param basePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param collisionBoxes Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function IWorldAccessor.GetIntersectingEntities(basePos, collisionBoxes, matches) end

-- Find the nearest player to the given position
---@param x number
---@param y number
---@param z number
---@return IPlayer # Represents a player
function IWorldAccessor.NearestPlayer(x, y, z) end

---@return IPlayer[] # Represents a player
function IWorldAccessor.get_AllOnlinePlayers() end

---@return IPlayer[] # Represents a player
function IWorldAccessor.get_AllPlayers() end

-- Retrieves the worldplayer data object of given player. When called server side the player does not need to be connected.
---@param playerUid string
---@return IPlayer # Represents a player
function IWorldAccessor.PlayerByUid(playerUid) end

-- Plays given sound at given position.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, randomizePitch, range, volume) end

-- Plays given sound at given position.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atEntity Entity The basic class for all entities in the game
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, atEntity, dualCallByPlayer, randomizePitch, range, volume) end

-- Plays given sound at given position.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atEntity Entity The basic class for all entities in the game
---@param dualCallByPlayer IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, atEntity, dualCallByPlayer, pitch, range, volume) end

-- Plays given sound at given position.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer IPlayer Represents a player
---@param soundType EnumSoundType
---@param pitch number
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, soundType, pitch, range, volume) end

-- Plays given sound at given player position.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atPlayer IPlayer Represents a player
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundAt(location, atPlayer, dualCallByPlayer, randomizePitch, range, volume) end

-- Plays given sound only for given player. Useful when called server side, for the client side there is no difference over using PlaySoundAt or PlaySoundFor
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param forPlayer IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundFor(location, forPlayer, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param forPlayer IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function IWorldAccessor.PlaySoundFor(location, forPlayer, pitch, range, volume) end

-- Spawn a bunch of particles
---@param quantity number
---@param color number
---@param minPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param minVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param maxVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param lifeLength number
---@param gravityEffect number
---@param scale? number
---@param model? EnumParticleModel
---@param dualCallByPlayer? IPlayer Represents a player
function IWorldAccessor.SpawnParticles(quantity, color, minPos, maxPos, minVelocity, maxVelocity, lifeLength, gravityEffect, scale, model, dualCallByPlayer) end

-- Spawn a bunch of particles
---@param particlePropertiesProvider IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@param dualCallByPlayer? IPlayer Represents a player
function IWorldAccessor.SpawnParticles(particlePropertiesProvider, dualCallByPlayer) end

-- Spawn a bunch of particles colored by the block at given position
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IWorldAccessor.SpawnCubeParticles(blockPos, pos, radius, quantity, scale, dualCallByPlayer, velocity) end

-- Spawn a bunch of particles colored by given itemstack
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param item ItemStack
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IWorldAccessor.SpawnCubeParticles(pos, item, radius, quantity, scale, dualCallByPlayer, velocity) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function IWorldAccessor.RayTraceForSelection(fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param supplier IWorldIntersectionSupplier
---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function IWorldAccessor.RayTraceForSelection(supplier, fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param range number
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function IWorldAccessor.RayTraceForSelection(fromPos, pitch, yaw, range, blockSelection, entitySelection, bfilter, efilter) end

---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param filter? BlockFilter
---@param efilter? EntityFilter
function IWorldAccessor.RayTraceForSelection(ray, blockSelection, entitySelection, filter, efilter) end

-- Calls given method after every given interval until unregistered. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param onGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function IWorldAccessor.RegisterGameTickListener(onGameTick, millisecondInterval, initialDelayOffsetMs) end

-- Removes a game tick listener
---@param listenerId number
function IWorldAccessor.UnregisterGameTickListener(listenerId) end

-- Calls given method after supplied amount of milliseconds. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function IWorldAccessor.RegisterCallback(OnTimePassed, millisecondDelay) end

-- Calls given method after supplied amount of milliseconds. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
-- Ignores any subsequent registers for the same blockpos while a callback is still in the queue. Used e.g. for liquid physics to prevent unnecessary multiple updates
---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@return number
function IWorldAccessor.RegisterCallbackUnique(OnGameTick, pos, millisecondInterval) end

-- Calls given method after supplied amount of milliseconds, lets you supply a block position to be passed to the method. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function IWorldAccessor.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

-- Returns true if given client has a privilege. Always returns true on the client.
---@param clientid number
---@param privilege string
---@return boolean
function IWorldAccessor.PlayerHasPrivilege(clientid, privilege) end

-- Removes a delayed callback
---@param listenerId number
function IWorldAccessor.UnregisterCallback(listenerId) end

---@return AABBIntersectionTest
function IWorldAccessor.get_InteresectionTester() end

-- Sends given player a list of block positions that should be highlighted
---@param player IPlayer Represents a player
---@param highlightSlotId number
---@param blocks table
---@param colors table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
---@param scale? number
function IWorldAccessor.HighlightBlocks(player, highlightSlotId, blocks, colors, mode, shape, scale) end

-- Sends given player a list of block positions that should be highlighted (using a default color)
---@param player IPlayer Represents a player
---@param highlightSlotId number
---@param blocks table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
function IWorldAccessor.HighlightBlocks(player, highlightSlotId, blocks, mode, shape) end

-- Retrieve a customized interface to access blocks in the loaded game world.
---@param synchronize boolean
---@param relight boolean
---@param strict boolean
---@param debug? boolean
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IWorldAccessor.GetBlockAccessor(synchronize, relight, strict, debug) end

-- Retrieve a customized interface to access blocks in the loaded game world. Does not to relight/sync on a SetBlock until Commit() is called. On commit all touched blocks are relit/synced at once. This method should be used when setting many blocks (e.g. tree generation, explosion, etc.).
---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function IWorldAccessor.GetBlockAccessorBulkUpdate(synchronize, relight, debug) end

-- Retrieve a customized interface to access blocks in the loaded game world. Does not relight. On commit all touched blocks are updated at once. This method is currently used for the snow accumulation system
---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function IWorldAccessor.GetBlockAccessorBulkMinimalUpdate(synchronize, debug) end

-- Retrieve a special Bulk blockaccessor which can have the chunks it accesses directly provided to it from a loading mapchunk. On commit all touched blocks are updated at once. This method is currently used for the snow accumulation system
---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function IWorldAccessor.GetBlockAccessorMapChunkLoading(synchronize, debug) end

-- Same as GetBlockAccessorBulkUpdate, additionally, each Commit() stores the previous state and you can perform undo/redo operations on these. 
---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBlockAccessorRevertable # Provides read/write access to the blocks of a world. 
function IWorldAccessor.GetBlockAccessorRevertable(synchronize, relight, debug) end

-- Same as GetBlockAccessor but you have to call PrefetchBlocks() before using GetBlock(). It pre-loads all blocks in given area resulting in faster GetBlock() access
---@param synchronize boolean
---@param relight boolean
---@return IBlockAccessorPrefetch # Useful for when you have to scan multiple times over the same set of blocks
function IWorldAccessor.GetBlockAccessorPrefetch(synchronize, relight) end

-- Same as the normal block accessor but remembers the previous chunk that was accessed. This can give you a 10-50% performance boosts when you scan many blocks in tight loops
-- DONT FORGET: Call .Begin() before getting/setting in a tight loop. Not calling it can cause the game to crash
---@param synchronize boolean
---@param relight boolean
---@return ICachingBlockAccessor
function IWorldAccessor.GetCachingBlockAccessor(synchronize, relight) end

-- This block accessor is *read only* and does not use lock() or chunk.Unpack() in order to make it very fast. This comes at the cost of sometimes reading invalid data (block id = 0) when the chunk is packed or being packed.
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IWorldAccessor.GetLockFreeBlockAccessor() end


