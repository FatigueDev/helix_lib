---@meta

---@class ServerEventManager: EventManager, EventManager
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
ServerEventManager = {}

---@param server ServerMain
---@return ServerEventManager
function ServerEventManager.ctor(server) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ServerEventManager.get_Logger() end

---@return string
function ServerEventManager.get_CommandPrefix() end

---@return number
function ServerEventManager.get_InWorldEllapsedMs() end

---@param value function
function ServerEventManager.add_OnSaveGameCreated(value) end

---@param value function
function ServerEventManager.remove_OnSaveGameCreated(value) end

---@param value function
function ServerEventManager.add_OnSaveGameLoaded(value) end

---@param value function
function ServerEventManager.remove_OnSaveGameLoaded(value) end

---@param value function
function ServerEventManager.add_AssetsFirstLoaded(value) end

---@param value function
function ServerEventManager.remove_AssetsFirstLoaded(value) end

---@param value function
function ServerEventManager.add_AssetsFinalizer(value) end

---@param value function
function ServerEventManager.remove_AssetsFinalizer(value) end

---@param value function
function ServerEventManager.add_OnGameWorldBeingSaved(value) end

---@param value function
function ServerEventManager.remove_OnGameWorldBeingSaved(value) end

---@param value function
function ServerEventManager.add_OnWorldgenStartup(value) end

---@param value function
function ServerEventManager.remove_OnWorldgenStartup(value) end

---@param value UpnpCompleteDelegate
function ServerEventManager.add_OnUpnpComplete(value) end

---@param value UpnpCompleteDelegate
function ServerEventManager.remove_OnUpnpComplete(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerRespawn(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerRespawn(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerJoin(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerJoin(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerNowPlaying(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerNowPlaying(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerLeave(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerLeave(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerDisconnect(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerDisconnect(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function ServerEventManager.add_OnPlayerChat(value) end

---@param value PlayerChatDelegate When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
function ServerEventManager.remove_OnPlayerChat(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function ServerEventManager.add_OnPlayerDeath(value) end

---@param value PlayerDeathDelegate When the player died, this delegate will fire.
function ServerEventManager.remove_OnPlayerDeath(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerChangeGamemode(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerChangeGamemode(value) end

---@param value Func`3
function ServerEventManager.add_BeforeActiveSlotChanged(value) end

---@param value Func`3
function ServerEventManager.remove_BeforeActiveSlotChanged(value) end

---@param value function
function ServerEventManager.add_AfterActiveSlotChanged(value) end

---@param value function
function ServerEventManager.remove_AfterActiveSlotChanged(value) end

---@param value PlayerDelegate
function ServerEventManager.add_OnPlayerCreate(value) end

---@param value PlayerDelegate
function ServerEventManager.remove_OnPlayerCreate(value) end

---@param value CanUseDelegate
function ServerEventManager.add_CanUseBlock(value) end

---@param value CanUseDelegate
function ServerEventManager.remove_CanUseBlock(value) end

---@param value CanPlaceOrBreakDelegate
function ServerEventManager.add_CanPlaceOrBreakBlock(value) end

---@param value CanPlaceOrBreakDelegate
function ServerEventManager.remove_CanPlaceOrBreakBlock(value) end

---@param value BlockUsedDelegate
function ServerEventManager.add_DidUseBlock(value) end

---@param value BlockUsedDelegate
function ServerEventManager.remove_DidUseBlock(value) end

---@param value BlockPlacedDelegate
function ServerEventManager.add_DidPlaceBlock(value) end

---@param value BlockPlacedDelegate
function ServerEventManager.remove_DidPlaceBlock(value) end

---@param value BlockBrokenDelegate
function ServerEventManager.add_DidBreakBlock(value) end

---@param value BlockBrokenDelegate
function ServerEventManager.remove_DidBreakBlock(value) end

---@param value BlockBreakDelegate
function ServerEventManager.add_BreakBlock(value) end

---@param value BlockBreakDelegate
function ServerEventManager.remove_BreakBlock(value) end

---@param value OnInteractDelegate
function ServerEventManager.add_OnPlayerInteractEntity(value) end

---@param value OnInteractDelegate
function ServerEventManager.remove_OnPlayerInteractEntity(value) end

---@param value EntityDelegate
function ServerEventManager.add_OnEntitySpawn(value) end

---@param value EntityDelegate
function ServerEventManager.remove_OnEntitySpawn(value) end

---@param value EntityDespawnDelegate
function ServerEventManager.add_OnEntityDespawn(value) end

---@param value EntityDespawnDelegate
function ServerEventManager.remove_OnEntityDespawn(value) end

---@param value EntityDelegate
function ServerEventManager.add_OnEntityLoaded(value) end

---@param value EntityDelegate
function ServerEventManager.remove_OnEntityLoaded(value) end

---@param value TrySpawnEntityDelegate
function ServerEventManager.add_OnTrySpawnEntity(value) end

---@param value TrySpawnEntityDelegate
function ServerEventManager.remove_OnTrySpawnEntity(value) end

---@param playerUid string
---@param privilegecode string
---@return boolean
function ServerEventManager.HasPrivilege(playerUid, privilegecode) end

---@param success boolean
function ServerEventManager.TriggerUpnpComplete(success) end

---@param entity Entity The basic class for all entities in the game
function ServerEventManager.TriggerEntityLoaded(entity) end

---@param entity Entity The basic class for all entities in the game
function ServerEventManager.TriggerEntitySpawned(entity) end

---@param blockaccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param properties EntityProperties&
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param herdId number
---@return boolean
function ServerEventManager.TriggerTrySpawnEntity(blockaccessor, properties, position, herdId) end

---@param entity Entity The basic class for all entities in the game
---@param reason EntityDespawnData
function ServerEventManager.TriggerEntityDespawned(entity, reason) end

function ServerEventManager.OnAssetsFirstLoaded() end

function ServerEventManager.TriggerFinalizeAssets() end

function ServerEventManager.TriggerWorldgenStartup() end

function ServerEventManager.TriggerSaveGameLoaded() end

function ServerEventManager.TriggerSaveGameCreated() end

function ServerEventManager.TriggerGameWorldBeingSaved() end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
function ServerEventManager.TriggerDidUseBlock(player, blockSel) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldBlockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
function ServerEventManager.TriggerDidBreakBlock(player, oldBlockId, blockSel) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param handling EnumHandling&
function ServerEventManager.TriggerBreakBlock(player, blockSel, dropQuantityMultiplier, handling) end

---@param entity Entity The basic class for all entities in the game
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode number
---@param handling EnumHandling&
function ServerEventManager.TriggerPlayerInteractEntity(entity, byPlayer, slot, hitPosition, mode, handling) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldBlockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param withItemStack ItemStack
function ServerEventManager.TriggerDidPlaceBlock(player, oldBlockId, blockSel, withItemStack) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerLeave(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerDisconnect(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerCreate(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerJoin(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerNowPlaying(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerRespawn(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param fromSlot number
---@param toSlot number
---@return boolean
function ServerEventManager.TriggerBeforeActiveSlotChanged(player, fromSlot, toSlot) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param fromSlot number
---@param toSlot number
function ServerEventManager.TriggerAfterActiveSlotChanged(player, fromSlot, toSlot) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param channelId number
---@param message string
---@param data string
---@param consumed BoolRef
function ServerEventManager.TriggerOnplayerChat(player, channelId, message, data, consumed) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param source DamageSource
function ServerEventManager.TriggerPlayerDeath(player, source) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerEventManager.TriggerPlayerChangeGamemode(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param claimant string
---@return boolean
function ServerEventManager.TriggerCanPlaceOrBreak(player, blockSel, claimant) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return boolean
function ServerEventManager.TriggerCanUse(player, blockSel) end

---@param worldType string
---@return WorldGenHandler
function ServerEventManager.GetWorldGenHandler(worldType) end

---@param worldType string
---@return WorldGenHandler
function ServerEventManager.GetOrCreateWorldGenHandler(worldType) end

function ServerEventManager.WipeAllDelegates() end

---@param value OnGetClimateDelegate
function ServerEventManager.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function ServerEventManager.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function ServerEventManager.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function ServerEventManager.remove_OnGetWindSpeed(value) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
function ServerEventManager.TriggerOnGetClimate(climate, pos, mode, totalDays) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
function ServerEventManager.TriggerOnGetWindSpeed(pos, windSpeed) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function ServerEventManager.TriggerGameTick(ellapsedMilliseconds, world) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function ServerEventManager.TriggerGameTickDebug(ellapsedMilliseconds, world) end

---@param handler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerEventManager.AddGameTickListener(handler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerEventManager.AddGameTickListener(handler, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerEventManager.AddGameTickListener(handler, pos, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param callAfterEllapsedMS number
---@return number
function ServerEventManager.AddDelayedCallback(handler, callAfterEllapsedMS) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param callAfterEllapsedMS number
---@return number
function ServerEventManager.AddDelayedCallback(handler, pos, callAfterEllapsedMS) end

---@param listenerId number
function ServerEventManager.RemoveDelayedCallback(listenerId) end

---@param listenerId number
function ServerEventManager.RemoveGameTickListener(listenerId) end

---@return userdata
function ServerEventManager.GetType() end

---@return string
function ServerEventManager.ToString() end

---@param obj userdata
---@return boolean
function ServerEventManager.Equals(obj) end

---@return number
function ServerEventManager.GetHashCode() end


