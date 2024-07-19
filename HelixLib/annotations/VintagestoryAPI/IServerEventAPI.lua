---@meta

-- Contains methods to hook into various server processes
---@class IServerEventAPI:  IEventAPI
---@field BeginChunkColumnLoadChunkThread ChunkColumnBeginLoadChunkThread Called when just loaded (or generated) a full chunkcolumn
---@field ChunkColumnLoaded ChunkColumnLoadedDelegate Called whenever the server loaded from disk or fully generated a chunkcolumn
---@field ChunkColumnUnloaded ChunkColumnUnloadDelegate Called just before a chunk column is about to get unloaded. On shutdown this method is called for all loaded chunks, so this method can get called tens of thousands of times there, beware
---@field CanUseBlock CanUseDelegate Registers a handler to be called every time a player uses a block. The methods return value determines if the player may place/break this block.
---@field OnTrySpawnEntity TrySpawnEntityDelegate Called when the server attempts to spawn given entity. Return false to deny spawning.
---@field OnPlayerInteractEntity OnInteractDelegate Called when a player interacts with an entity
---@field PlayerCreate PlayerDelegate Called when a new player joins 
---@field PlayerRespawn PlayerDelegate Called when a player got respawned
---@field PlayerJoin PlayerDelegate Called when a player joins
---@field PlayerNowPlaying PlayerDelegate Called when a player joins and his client is now fully loaded and ready to play
---@field PlayerLeave PlayerDelegate Called when a player intentionally leaves
---@field PlayerDisconnect PlayerDelegate Called whenever a player disconnects (timeout, leave, disconnect, kick, etc.). 
---@field PlayerChat PlayerChatDelegate Called when a player wrote a chat message
---@field PlayerDeath PlayerDeathDelegate Called when a player died
---@field PlayerSwitchGameMode PlayerDelegate Whenever a player switched his game mode or has it switched for him
---@field BeforeActiveSlotChanged Func`3 Fired before a player changes their active slot (such as selected hotbar slot). Allows for the event to be cancelled depending on the return value.
---@field AfterActiveSlotChanged function Fired after a player changes their active slot (such as selected hotbar slot).
---@field AssetsFinalizers function Triggered after assets have been loaded and parsed and registered, but before they are declared to be ready - e.g. you can add more behaviors here, or make other code-based changes to properties read from JSONs Note: modsystems should register for this in a Start() method not StartServerSide(): the AssetsFinalizer event is fired before StartServerSide() is reached
---@field SaveGameLoaded function Triggered after the game world data has been loaded. At this point all blocks are loaded and the Map size is known. In 1.17+ do NOT use this server event to add or update behaviors or attributes or other fixed properties of any block, item or entity, in code (additional to what is read from JSON). Instead, code which needs to do that should be registered for event sapi.Event.AssetsFinalizers.  See VSSurvivalMod system BlockReinforcement.cs for an example.
---@field SaveGameCreated function Triggered after a savegame has been created - i.e. when a new world was created
---@field WorldgenStartup function Triggered when starting up worldgen during server startup (as the final stage of the WorldReady EnumServerRunPhase)
---@field GameWorldSave function Triggered before the game world data is being saved to disk 
---@field ServerSuspend SuspendServerDelegate Called when something wants to pause the server, e.g. the autosave system. This method will be called every 50ms until all delegates return Ready state. Timeout is 60 seconds.
---@field ServerResume ResumeServerDelegate Called when something wants to resume execution of the server, e.g. the autosave system
---@field DidPlaceBlock BlockPlacedDelegate Registers a method to be called every time a player places a block
---@field CanPlaceOrBreakBlock CanPlaceOrBreakDelegate Registers a handler to be called every time a player places a block. The methods return value determines if the player may place/break this block. When returning false the client will be notified and the action reverted
---@field BreakBlock BlockBreakDelegate Called when a block should got broken now (that has been broken by a player). Set handling to PreventDefault to handle the block breaking yourself. Otherwise the engine will break the block (= either call heldItemstack.Collectible.OnBlockBrokenWith when player holds something in his hands or block.OnBlockBroken).
---@field DidBreakBlock BlockBrokenDelegate Registers a method to be called every time a player deletes a block. Called after the block was already broken
---@field DidUseBlock BlockUsedDelegate Registers a method to be called every time a player uses a block
IServerEventAPI = {}


-- Returns the list of currently registered map chunk generator handlers for given world type. Returns an array of handler lists. Each element in the array represents all the handlers for one worldgenpass (see EnumWorldGenPass)
-- When world type is null, all handlers are returned
---@param worldType string
---@return IWorldGenHandler
function IServerEventAPI.GetRegisteredWorldGenHandlers(worldType) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param properties EntityProperties&
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param herdId number
---@return boolean
function IServerEventAPI.TriggerTrySpawnEntity(blockAccessor, properties, position, herdId) end

-- If you require neighbour chunk data during world generation, you have to register to this event to receive access to the chunk generator thread. This method is only called once during server startup.
---@param handler WorldGenThreadDelegate
function IServerEventAPI.GetWorldgenBlockAccessor(handler) end

-- Triggered before the first chunk, map chunk or map region is generated, given that the passed on world type has been selected. Called right after the save game has been loaded.
---@param handler function
---@param forWorldType string
function IServerEventAPI.InitWorldGenerator(handler, forWorldType) end

-- Event that is triggered whenever a new column of chunks is being generated. It is always called before the ChunkGenerator event
---@param handler MapChunkGeneratorDelegate
---@param forWorldType string
function IServerEventAPI.MapChunkGeneration(handler, forWorldType) end

-- Event that is triggered whenever a new 16x16 section of column of chunks is being generated. It is always called before the ChunkGenerator and before the MapChunkGeneration event
---@param handler MapRegionGeneratorDelegate
---@param forWorldType string
function IServerEventAPI.MapRegionGeneration(handler, forWorldType) end

-- Vintagestory uses this method to generate the basic terrain (base terrain + rock strata + caves) in full columns. Only called once in pass EnumWorldGenPass.TerrainNoise. Register to this event if you need acces to a whole chunk column during inital generation.
---@param handler ChunkColumnGenerationDelegate
---@param pass EnumWorldGenPass The stages a chunk goes through when being created
---@param forWorldType string
function IServerEventAPI.ChunkColumnGeneration(handler, pass, forWorldType) end

-- Registers a method to be called by certain special worldgen triggers, for example Resonance Archives entrance staircase
---@param handler WorldGenHookDelegate
---@param forWorldType string
---@param hook string
function IServerEventAPI.WorldgenHook(handler, forWorldType, hook) end

-- Trigger the special worldgen hook, with the name "hook", if it exists
---@param hook string
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
function IServerEventAPI.TriggerWorldgenHook(hook, blockAccessor, pos, loc) end

---@param value ChunkColumnBeginLoadChunkThread Triggered immediately when the server loads a chunk column from disk or generates a new one, in the SupplyChunks thread (not the main thread)
function IServerEventAPI.add_BeginChunkColumnLoadChunkThread(value) end

---@param value ChunkColumnBeginLoadChunkThread Triggered immediately when the server loads a chunk column from disk or generates a new one, in the SupplyChunks thread (not the main thread)
function IServerEventAPI.remove_BeginChunkColumnLoadChunkThread(value) end

---@param value ChunkColumnLoadedDelegate Triggered when the server loaded a chunk column from disk or generated a new one
function IServerEventAPI.add_ChunkColumnLoaded(value) end

---@param value ChunkColumnLoadedDelegate Triggered when the server loaded a chunk column from disk or generated a new one
function IServerEventAPI.remove_ChunkColumnLoaded(value) end

---@param value ChunkColumnUnloadDelegate Triggered just before a chunk column gets unloaded
function IServerEventAPI.add_ChunkColumnUnloaded(value) end

---@param value ChunkColumnUnloadDelegate Triggered just before a chunk column gets unloaded
function IServerEventAPI.remove_ChunkColumnUnloaded(value) end

---@param value CanUseDelegate
function IServerEventAPI.add_CanUseBlock(value) end

---@param value CanUseDelegate
function IServerEventAPI.remove_CanUseBlock(value) end

---@param value TrySpawnEntityDelegate
function IServerEventAPI.add_OnTrySpawnEntity(value) end

---@param value TrySpawnEntityDelegate
function IServerEventAPI.remove_OnTrySpawnEntity(value) end

---@param value OnInteractDelegate
function IServerEventAPI.add_OnPlayerInteractEntity(value) end

---@param value OnInteractDelegate
function IServerEventAPI.remove_OnPlayerInteractEntity(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerCreate(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerCreate(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerRespawn(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerRespawn(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerJoin(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerJoin(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerNowPlaying(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerNowPlaying(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerLeave(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerLeave(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerDisconnect(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerDisconnect(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function IServerEventAPI.add_PlayerChat(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function IServerEventAPI.remove_PlayerChat(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function IServerEventAPI.add_PlayerDeath(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function IServerEventAPI.remove_PlayerDeath(value) end

---@param value PlayerDelegate
function IServerEventAPI.add_PlayerSwitchGameMode(value) end

---@param value PlayerDelegate
function IServerEventAPI.remove_PlayerSwitchGameMode(value) end

---@param value Func`3
function IServerEventAPI.add_BeforeActiveSlotChanged(value) end

---@param value Func`3
function IServerEventAPI.remove_BeforeActiveSlotChanged(value) end

---@param value function
function IServerEventAPI.add_AfterActiveSlotChanged(value) end

---@param value function
function IServerEventAPI.remove_AfterActiveSlotChanged(value) end

---@param value function
function IServerEventAPI.add_AssetsFinalizers(value) end

---@param value function
function IServerEventAPI.remove_AssetsFinalizers(value) end

---@param value function
function IServerEventAPI.add_SaveGameLoaded(value) end

---@param value function
function IServerEventAPI.remove_SaveGameLoaded(value) end

---@param value function
function IServerEventAPI.add_SaveGameCreated(value) end

---@param value function
function IServerEventAPI.remove_SaveGameCreated(value) end

---@param value function
function IServerEventAPI.add_WorldgenStartup(value) end

---@param value function
function IServerEventAPI.remove_WorldgenStartup(value) end

---@param value function
function IServerEventAPI.add_GameWorldSave(value) end

---@param value function
function IServerEventAPI.remove_GameWorldSave(value) end

---@param value SuspendServerDelegate
function IServerEventAPI.add_ServerSuspend(value) end

---@param value SuspendServerDelegate
function IServerEventAPI.remove_ServerSuspend(value) end

---@param value ResumeServerDelegate
function IServerEventAPI.add_ServerResume(value) end

---@param value ResumeServerDelegate
function IServerEventAPI.remove_ServerResume(value) end

-- Triggered whenever the server enters a new run phase. Since mods are only loaded during run phase "LoadGamePre" registering to any earlier event will get triggered.
---@param runPhase EnumServerRunPhase These are the stages the server goes through during launch
---@param handler function
function IServerEventAPI.ServerRunPhase(runPhase, handler) end

-- Registers a method to be called every given interval
---@param handler function
---@param interval number
function IServerEventAPI.Timer(handler, interval) end

---@param value BlockPlacedDelegate
function IServerEventAPI.add_DidPlaceBlock(value) end

---@param value BlockPlacedDelegate
function IServerEventAPI.remove_DidPlaceBlock(value) end

---@param value CanPlaceOrBreakDelegate
function IServerEventAPI.add_CanPlaceOrBreakBlock(value) end

---@param value CanPlaceOrBreakDelegate
function IServerEventAPI.remove_CanPlaceOrBreakBlock(value) end

---@param value BlockBreakDelegate
function IServerEventAPI.add_BreakBlock(value) end

---@param value BlockBreakDelegate
function IServerEventAPI.remove_BreakBlock(value) end

---@param value BlockBrokenDelegate
function IServerEventAPI.add_DidBreakBlock(value) end

---@param value BlockBrokenDelegate
function IServerEventAPI.remove_DidBreakBlock(value) end

---@param value BlockUsedDelegate
function IServerEventAPI.add_DidUseBlock(value) end

---@param value BlockUsedDelegate
function IServerEventAPI.remove_DidUseBlock(value) end


