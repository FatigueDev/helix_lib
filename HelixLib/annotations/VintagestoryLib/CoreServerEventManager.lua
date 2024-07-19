---@meta

---@class CoreServerEventManager: ServerEventManager, ServerEventManager, EventManager
---@field Logger ILogger
---@field CommandPrefix string
---@field InWorldEllapsedMs number
---@field OnSaveGameCreated function
---@field OnSaveGameLoaded function
---@field AssetsFirstLoaded function
---@field AssetsFinalizer function
---@field OnGameWorldBeingSaved function
---@field OnWorldgenStartup function
---@field OnUpnpComplete UpnpCompleteDelegate
---@field OnPlayerRespawn PlayerDelegate
---@field OnPlayerJoin PlayerDelegate
---@field OnPlayerNowPlaying PlayerDelegate
---@field OnPlayerLeave PlayerDelegate
---@field OnPlayerDisconnect PlayerDelegate
---@field OnPlayerChat PlayerChatDelegate
---@field OnPlayerDeath PlayerDeathDelegate
---@field OnPlayerChangeGamemode PlayerDelegate
---@field BeforeActiveSlotChanged Func`3
---@field AfterActiveSlotChanged function
---@field OnPlayerCreate PlayerDelegate
---@field CanUseBlock CanUseDelegate
---@field CanPlaceOrBreakBlock CanPlaceOrBreakDelegate
---@field DidUseBlock BlockUsedDelegate
---@field DidPlaceBlock BlockPlacedDelegate
---@field DidBreakBlock BlockBrokenDelegate
---@field BreakBlock BlockBreakDelegate
---@field OnPlayerInteractEntity OnInteractDelegate
---@field OnEntitySpawn EntityDelegate
---@field OnEntityDespawn EntityDespawnDelegate
---@field OnEntityLoaded EntityDelegate
---@field OnTrySpawnEntity TrySpawnEntityDelegate
---@field OnGetClimate OnGetClimateDelegate
---@field OnGetWindSpeed OnGetWindSpeedDelegate
---@field serverRunPhaseDelegates table
---@field WorldgenBlockAccessor table
---@field WorldgenHandlers table
---@field EventBusListeners table
CoreServerEventManager = {}

---@param server ServerMain
---@param modEventManager ServerEventManager
---@return CoreServerEventManager
function CoreServerEventManager.ctor(server, modEventManager) end

---@param entity Entity The basic class for all entities in the game
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode number
---@param handling EnumHandling&
function CoreServerEventManager.TriggerPlayerInteractEntity(entity, byPlayer, slot, hitPosition, mode, handling) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldBlockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
function CoreServerEventManager.TriggerDidBreakBlock(player, oldBlockId, blockSel) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param handling EnumHandling&
function CoreServerEventManager.TriggerBreakBlock(player, blockSel, dropQuantityMultiplier, handling) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldBlockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param withItemStack ItemStack
function CoreServerEventManager.TriggerDidPlaceBlock(player, oldBlockId, blockSel, withItemStack) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
function CoreServerEventManager.TriggerDidUseBlock(player, blockSel) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function CoreServerEventManager.TriggerGameTick(ellapsedMilliseconds, world) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function CoreServerEventManager.TriggerGameTickDebug(ellapsedMilliseconds, world) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param claimant string
---@return boolean
function CoreServerEventManager.TriggerCanPlaceOrBreak(player, blockSel, claimant) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return boolean
function CoreServerEventManager.TriggerCanUse(player, blockSel) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param channelId number
---@param message string
---@param data string
---@param consumed BoolRef
function CoreServerEventManager.TriggerOnplayerChat(player, channelId, message, data, consumed) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerDisconnect(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerJoin(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerNowPlaying(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerLeave(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param fromSlot number
---@param toSlot number
---@return boolean
function CoreServerEventManager.TriggerBeforeActiveSlotChanged(player, fromSlot, toSlot) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param fromSlot number
---@param toSlot number
function CoreServerEventManager.TriggerAfterActiveSlotChanged(player, fromSlot, toSlot) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerRespawn(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerCreate(player) end

---@param blockaccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param properties EntityProperties&
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param herdId number
---@return boolean
function CoreServerEventManager.TriggerTrySpawnEntity(blockaccessor, properties, position, herdId) end

function CoreServerEventManager.TriggerGameWorldBeingSaved() end

function CoreServerEventManager.TriggerSaveGameLoaded() end

---@param entity Entity The basic class for all entities in the game
function CoreServerEventManager.TriggerEntitySpawned(entity) end

---@param entity Entity The basic class for all entities in the game
---@param reason EntityDespawnData
function CoreServerEventManager.TriggerEntityDespawned(entity, reason) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function CoreServerEventManager.TriggerPlayerChangeGamemode(player) end

---@param entity Entity The basic class for all entities in the game
function CoreServerEventManager.TriggerEntityLoaded(entity) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param source DamageSource
function CoreServerEventManager.TriggerPlayerDeath(player, source) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
function CoreServerEventManager.TriggerOnGetClimate(climate, pos, mode, totalDays) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
function CoreServerEventManager.TriggerOnGetWindSpeed(pos, windSpeed) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function CoreServerEventManager.get_Logger() end

---@return string
function CoreServerEventManager.get_CommandPrefix() end

---@return number
function CoreServerEventManager.get_InWorldEllapsedMs() end

---@param value function
function CoreServerEventManager.add_OnSaveGameCreated(value) end

---@param value function
function CoreServerEventManager.remove_OnSaveGameCreated(value) end

---@param value function
function CoreServerEventManager.add_OnSaveGameLoaded(value) end

---@param value function
function CoreServerEventManager.remove_OnSaveGameLoaded(value) end

---@param value function
function CoreServerEventManager.add_AssetsFirstLoaded(value) end

---@param value function
function CoreServerEventManager.remove_AssetsFirstLoaded(value) end

---@param value function
function CoreServerEventManager.add_AssetsFinalizer(value) end

---@param value function
function CoreServerEventManager.remove_AssetsFinalizer(value) end

---@param value function
function CoreServerEventManager.add_OnGameWorldBeingSaved(value) end

---@param value function
function CoreServerEventManager.remove_OnGameWorldBeingSaved(value) end

---@param value function
function CoreServerEventManager.add_OnWorldgenStartup(value) end

---@param value function
function CoreServerEventManager.remove_OnWorldgenStartup(value) end

---@param value UpnpCompleteDelegate
function CoreServerEventManager.add_OnUpnpComplete(value) end

---@param value UpnpCompleteDelegate
function CoreServerEventManager.remove_OnUpnpComplete(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerRespawn(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerRespawn(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerJoin(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerJoin(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerNowPlaying(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerNowPlaying(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerLeave(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerLeave(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerDisconnect(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerDisconnect(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function CoreServerEventManager.add_OnPlayerChat(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function CoreServerEventManager.remove_OnPlayerChat(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function CoreServerEventManager.add_OnPlayerDeath(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function CoreServerEventManager.remove_OnPlayerDeath(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerChangeGamemode(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerChangeGamemode(value) end

---@param value Func`3
function CoreServerEventManager.add_BeforeActiveSlotChanged(value) end

---@param value Func`3
function CoreServerEventManager.remove_BeforeActiveSlotChanged(value) end

---@param value function
function CoreServerEventManager.add_AfterActiveSlotChanged(value) end

---@param value function
function CoreServerEventManager.remove_AfterActiveSlotChanged(value) end

---@param value PlayerDelegate
function CoreServerEventManager.add_OnPlayerCreate(value) end

---@param value PlayerDelegate
function CoreServerEventManager.remove_OnPlayerCreate(value) end

---@param value CanUseDelegate
function CoreServerEventManager.add_CanUseBlock(value) end

---@param value CanUseDelegate
function CoreServerEventManager.remove_CanUseBlock(value) end

---@param value CanPlaceOrBreakDelegate
function CoreServerEventManager.add_CanPlaceOrBreakBlock(value) end

---@param value CanPlaceOrBreakDelegate
function CoreServerEventManager.remove_CanPlaceOrBreakBlock(value) end

---@param value BlockUsedDelegate
function CoreServerEventManager.add_DidUseBlock(value) end

---@param value BlockUsedDelegate
function CoreServerEventManager.remove_DidUseBlock(value) end

---@param value BlockPlacedDelegate
function CoreServerEventManager.add_DidPlaceBlock(value) end

---@param value BlockPlacedDelegate
function CoreServerEventManager.remove_DidPlaceBlock(value) end

---@param value BlockBrokenDelegate
function CoreServerEventManager.add_DidBreakBlock(value) end

---@param value BlockBrokenDelegate
function CoreServerEventManager.remove_DidBreakBlock(value) end

---@param value BlockBreakDelegate
function CoreServerEventManager.add_BreakBlock(value) end

---@param value BlockBreakDelegate
function CoreServerEventManager.remove_BreakBlock(value) end

---@param value OnInteractDelegate
function CoreServerEventManager.add_OnPlayerInteractEntity(value) end

---@param value OnInteractDelegate
function CoreServerEventManager.remove_OnPlayerInteractEntity(value) end

---@param value EntityDelegate
function CoreServerEventManager.add_OnEntitySpawn(value) end

---@param value EntityDelegate
function CoreServerEventManager.remove_OnEntitySpawn(value) end

---@param value EntityDespawnDelegate
function CoreServerEventManager.add_OnEntityDespawn(value) end

---@param value EntityDespawnDelegate
function CoreServerEventManager.remove_OnEntityDespawn(value) end

---@param value EntityDelegate
function CoreServerEventManager.add_OnEntityLoaded(value) end

---@param value EntityDelegate
function CoreServerEventManager.remove_OnEntityLoaded(value) end

---@param value TrySpawnEntityDelegate
function CoreServerEventManager.add_OnTrySpawnEntity(value) end

---@param value TrySpawnEntityDelegate
function CoreServerEventManager.remove_OnTrySpawnEntity(value) end

---@param playerUid string
---@param privilegecode string
---@return boolean
function CoreServerEventManager.HasPrivilege(playerUid, privilegecode) end

---@param success boolean
function CoreServerEventManager.TriggerUpnpComplete(success) end

function CoreServerEventManager.OnAssetsFirstLoaded() end

function CoreServerEventManager.TriggerFinalizeAssets() end

function CoreServerEventManager.TriggerWorldgenStartup() end

function CoreServerEventManager.TriggerSaveGameCreated() end

---@param worldType string
---@return WorldGenHandler
function CoreServerEventManager.GetWorldGenHandler(worldType) end

---@param worldType string
---@return WorldGenHandler
function CoreServerEventManager.GetOrCreateWorldGenHandler(worldType) end

function CoreServerEventManager.WipeAllDelegates() end

---@param value OnGetClimateDelegate
function CoreServerEventManager.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function CoreServerEventManager.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function CoreServerEventManager.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function CoreServerEventManager.remove_OnGetWindSpeed(value) end

---@param handler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function CoreServerEventManager.AddGameTickListener(handler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function CoreServerEventManager.AddGameTickListener(handler, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function CoreServerEventManager.AddGameTickListener(handler, pos, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param callAfterEllapsedMS number
---@return number
function CoreServerEventManager.AddDelayedCallback(handler, callAfterEllapsedMS) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param callAfterEllapsedMS number
---@return number
function CoreServerEventManager.AddDelayedCallback(handler, pos, callAfterEllapsedMS) end

---@param listenerId number
function CoreServerEventManager.RemoveDelayedCallback(listenerId) end

---@param listenerId number
function CoreServerEventManager.RemoveGameTickListener(listenerId) end

---@return userdata
function CoreServerEventManager.GetType() end

---@return string
function CoreServerEventManager.ToString() end

---@param obj userdata
---@return boolean
function CoreServerEventManager.Equals(obj) end

---@return number
function CoreServerEventManager.GetHashCode() end


