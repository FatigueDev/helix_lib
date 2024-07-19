---@meta

---@class ClientEventManager: EventManager, EventManager
---@field Logger ILogger
---@field CommandPrefix string
---@field InWorldEllapsedMs number
---@field OnHighlightBlocks HighlightBlocksDelegate
---@field OnUpdateLighting UpdateLightingDelegate
---@field OnChunkLoaded ChunkLoadedDelegate
---@field OnReloadShapes function
---@field OnReloadTextures function
---@field InGameError IngameErrorDelegate
---@field InGameDiscovery IngameDiscoveryDelegate
---@field ColorPresetChanged function
---@field OnGetClimate OnGetClimateDelegate
---@field OnGetWindSpeed OnGetWindSpeedDelegate
---@field OnAmbientSoundsScanComplete OnAmbientSoundScanCompleteDelegate
---@field CurrentTrackSupplier CurrentTrackSupplierDelegate
---@field TrackStarter TrackStarterDelegate
---@field OnChunkRetesselated table
---@field OnGameWindowFocus table
---@field OnDialogOpened table
---@field OnDialogClosed table
---@field OnUnBreakingBlock table
---@field OnPlayerBreakingBlock table
---@field OnPlayerBrokenBlock table
---@field OnBlockChanged table
---@field OnPlayerModeChange table
---@field OnReloadShaders table
---@field OnEntitySpawn table
---@field OnEntityLoaded table
---@field OnEntityDespawn table
---@field OnPlayerDeath table
---@field OnPlayerPropertyChanged table
---@field OnActiveSlotChanged table
---@field OnNewServerToClientChatLine table
---@field OnNewClientToServerChatLine table
---@field OnNewClientOnlyChatLine table
---@field EventBusListeners table
---@field renderersByStage table
ClientEventManager = {}

---@param game ClientMain
---@return ClientEventManager
function ClientEventManager.ctor(game) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientEventManager.get_Logger() end

---@return string
function ClientEventManager.get_CommandPrefix() end

---@return number
function ClientEventManager.get_InWorldEllapsedMs() end

---@param value HighlightBlocksDelegate
function ClientEventManager.add_OnHighlightBlocks(value) end

---@param value HighlightBlocksDelegate
function ClientEventManager.remove_OnHighlightBlocks(value) end

---@param value UpdateLightingDelegate
function ClientEventManager.add_OnUpdateLighting(value) end

---@param value UpdateLightingDelegate
function ClientEventManager.remove_OnUpdateLighting(value) end

---@param value ChunkLoadedDelegate
function ClientEventManager.add_OnChunkLoaded(value) end

---@param value ChunkLoadedDelegate
function ClientEventManager.remove_OnChunkLoaded(value) end

---@param value function
function ClientEventManager.add_OnReloadShapes(value) end

---@param value function
function ClientEventManager.remove_OnReloadShapes(value) end

---@param value function
function ClientEventManager.add_OnReloadTextures(value) end

---@param value function
function ClientEventManager.remove_OnReloadTextures(value) end

---@param value IngameErrorDelegate
function ClientEventManager.add_InGameError(value) end

---@param value IngameErrorDelegate
function ClientEventManager.remove_InGameError(value) end

---@param value IngameDiscoveryDelegate
function ClientEventManager.add_InGameDiscovery(value) end

---@param value IngameDiscoveryDelegate
function ClientEventManager.remove_InGameDiscovery(value) end

---@param value function
function ClientEventManager.add_ColorPresetChanged(value) end

---@param value function
function ClientEventManager.remove_ColorPresetChanged(value) end

---@param handler function
---@param stage EnumRenderStage
---@param profilingName string
---@param renderOrder number
function ClientEventManager.RegisterRenderer(handler, stage, profilingName, renderOrder) end

---@param handler IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param stage EnumRenderStage
---@param profilingName string
function ClientEventManager.RegisterRenderer(handler, stage, profilingName) end

---@param handler IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param stage EnumRenderStage
function ClientEventManager.UnregisterRenderer(handler, stage) end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param colors table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
---@param scale? number
function ClientEventManager.TriggerHighlightBlocks(player, slotId, blocks, colors, mode, shape, scale) end

---@param stage EnumRenderStage
---@param dt number
function ClientEventManager.TriggerRenderStage(stage, dt) end

---@param oldBlockId number
---@param newBlockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockUpdatesBulk? table
function ClientEventManager.TriggerLightingUpdate(oldBlockId, newBlockId, pos, blockUpdatesBulk) end

---@param chunkpos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ClientEventManager.TriggerChunkLoaded(chunkpos) end

---@param handler function Return true if the action/event was successfull
function ClientEventManager.RegisterReloadShaders(handler) end

---@param handler function Return true if the action/event was successfull
function ClientEventManager.UnregisterReloadShaders(handler) end

---@param chunkPos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param atQuantityDrawn number
---@param listener function
function ClientEventManager.RegisterOnChunkRetesselated(chunkPos, atQuantityDrawn, listener) end

---@param chunkPos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunk ClientChunk
function ClientEventManager.TriggerChunkRetesselated(chunkPos, chunk) end

---@param dialog GuiDialog
function ClientEventManager.TriggerDialogOpened(dialog) end

---@param dialog GuiDialog
function ClientEventManager.TriggerDialogClosed(dialog) end

---@param focus boolean
function ClientEventManager.TriggerGameWindowFocus(focus) end

---@param groupid number
---@param message string
---@param chattype EnumChatType A definition for the types of chat that could occur.
---@param data string
function ClientEventManager.TriggerNewModChatLine(groupid, message, chattype, data) end

---@param groupid number
---@param message string
---@param chattype EnumChatType A definition for the types of chat that could occur.
---@param data string
function ClientEventManager.TriggerNewClientChatLine(groupid, message, chattype, data) end

---@param sender userdata
---@param errorCode string
---@param text string
function ClientEventManager.TriggerIngameError(sender, errorCode, text) end

---@param sender userdata
---@param errorCode string
---@param text string
function ClientEventManager.TriggerIngameDiscovery(sender, errorCode, text) end

function ClientEventManager.TriggerColorPresetChanged() end

---@param groupid number
---@param message string
---@param chattype EnumChatType A definition for the types of chat that could occur.
---@param data string
function ClientEventManager.TriggerNewServerChatLine(groupid, message, chattype, data) end

---@param game ClientMain
---@param fromSlot number
---@param toSlot number
---@return boolean
function ClientEventManager.TriggerBeforeActiveSlotChanged(game, fromSlot, toSlot) end

---@param game ClientMain
---@param fromSlot number
---@param toSlot number
function ClientEventManager.TriggerAfterActiveSlotChanged(game, fromSlot, toSlot) end

---@param blockDamage BlockDamage
function ClientEventManager.TriggerBlockBreaking(blockDamage) end

---@param blockDamage BlockDamage
function ClientEventManager.TriggerBlockBroken(blockDamage) end

function ClientEventManager.TriggerPlayerModeChange() end

function ClientEventManager.TriggerReloadShapes() end

function ClientEventManager.TriggerReloadTextures() end

---@return boolean
function ClientEventManager.TriggerReloadShaders() end

---@param entity Entity The basic class for all entities in the game
function ClientEventManager.TriggerEntitySpawn(entity) end

---@param entity Entity The basic class for all entities in the game
function ClientEventManager.TriggerEntityLoaded(entity) end

---@param entity Entity The basic class for all entities in the game
---@param despawnReason EntityDespawnData
function ClientEventManager.TriggerEntityDespawn(entity, despawnReason) end

---@param property EnumProperty
---@param handler OnPlayerPropertyChanged
function ClientEventManager.RegisterPlayerPropertyChangedWatcher(property, handler) end

---@param playerUid string
---@param privilegecode string
---@return boolean
function ClientEventManager.HasPrivilege(playerUid, privilegecode) end

---@param game ClientMain
---@param slot ItemSlot The default item slot to item stacks
function ClientEventManager.TriggerOnMouseEnterSlot(game, slot) end

---@param game ClientMain
---@param itemSlot ItemSlot The default item slot to item stacks
function ClientEventManager.TriggerOnMouseLeaveSlot(game, itemSlot) end

---@param value OnGetClimateDelegate
function ClientEventManager.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function ClientEventManager.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function ClientEventManager.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function ClientEventManager.remove_OnGetWindSpeed(value) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
function ClientEventManager.TriggerOnGetClimate(climate, pos, mode, totalDays) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
function ClientEventManager.TriggerOnGetWindSpeed(pos, windSpeed) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function ClientEventManager.TriggerGameTick(ellapsedMilliseconds, world) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function ClientEventManager.TriggerGameTickDebug(ellapsedMilliseconds, world) end

---@param handler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventManager.AddGameTickListener(handler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventManager.AddGameTickListener(handler, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventManager.AddGameTickListener(handler, pos, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param callAfterEllapsedMS number
---@return number
function ClientEventManager.AddDelayedCallback(handler, callAfterEllapsedMS) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param callAfterEllapsedMS number
---@return number
function ClientEventManager.AddDelayedCallback(handler, pos, callAfterEllapsedMS) end

---@param listenerId number
function ClientEventManager.RemoveDelayedCallback(listenerId) end

---@param listenerId number
function ClientEventManager.RemoveGameTickListener(listenerId) end

---@return userdata
function ClientEventManager.GetType() end

---@return string
function ClientEventManager.ToString() end

---@param obj userdata
---@return boolean
function ClientEventManager.Equals(obj) end

---@return number
function ClientEventManager.GetHashCode() end


