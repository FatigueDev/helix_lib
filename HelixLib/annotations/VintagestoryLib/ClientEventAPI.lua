---@meta

---@class ClientEventAPI:  IClientEventAPI, IEventAPI
---@field MouseDown MouseEventDelegate
---@field MouseUp MouseEventDelegate
---@field MouseMove MouseEventDelegate
---@field KeyDown KeyEventDelegate
---@field KeyUp KeyEventDelegate
---@field FileDrop FileDropDelegate
---@field PlayerJoin PlayerEventDelegate
---@field PlayerLeave PlayerEventDelegate
---@field PlayerEntitySpawn PlayerEventDelegate
---@field PlayerEntityDespawn PlayerEventDelegate
---@field BlockTexturesLoaded function
---@field IsPlayerReady IsPlayerReadyDelegate
---@field PauseResume OnGamePauseResume
---@field LeaveWorld function
---@field LeftWorld function
---@field ChatMessage ChatLineDelegate
---@field BlockChanged BlockChangedDelegate
---@field BeforeActiveSlotChanged Func`2
---@field AfterActiveSlotChanged function
---@field ChunkDirty ChunkDirtyDelegate
---@field LevelFinalize function
---@field HotkeysChanged function
---@field OnSendChatMessage ClientChatLineDelegate
---@field OnEntityDeath EntityDeathDelegate
---@field MatchesGridRecipe MatchGridRecipeDelegate
---@field PlayerDeath PlayerEventDelegate
---@field OnTestBlockAccess TestBlockAccessDelegate
---@field MapRegionLoaded MapRegionLoadedDelegate
---@field MapRegionUnloaded MapRegionUnloadDelegate
---@field OnGetClimate OnGetClimateDelegate
---@field TestBlockAccess TestBlockAccessDelegate
---@field OnGetWindSpeed OnGetWindSpeedDelegate
---@field InGameError IngameErrorDelegate
---@field InGameDiscovery IngameDiscoveryDelegate
---@field ColorsPresetChanged function
---@field OnEntitySpawn EntityDelegate
---@field OnEntityLoaded EntityDelegate
---@field OnEntityDespawn EntityDespawnDelegate
---@field ReloadShader function
---@field ReloadTextures function
---@field ReloadShapes function
ClientEventAPI = {}

---@param game ClientMain
---@return ClientEventAPI
function ClientEventAPI.ctor(game) end

---@param value MouseEventDelegate
function ClientEventAPI.add_MouseDown(value) end

---@param value MouseEventDelegate
function ClientEventAPI.remove_MouseDown(value) end

---@param value MouseEventDelegate
function ClientEventAPI.add_MouseUp(value) end

---@param value MouseEventDelegate
function ClientEventAPI.remove_MouseUp(value) end

---@param value MouseEventDelegate
function ClientEventAPI.add_MouseMove(value) end

---@param value MouseEventDelegate
function ClientEventAPI.remove_MouseMove(value) end

---@param value KeyEventDelegate
function ClientEventAPI.add_KeyDown(value) end

---@param value KeyEventDelegate
function ClientEventAPI.remove_KeyDown(value) end

---@param value KeyEventDelegate
function ClientEventAPI.add_KeyUp(value) end

---@param value KeyEventDelegate
function ClientEventAPI.remove_KeyUp(value) end

---@param value FileDropDelegate
function ClientEventAPI.add_FileDrop(value) end

---@param value FileDropDelegate
function ClientEventAPI.remove_FileDrop(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.add_PlayerJoin(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.remove_PlayerJoin(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.add_PlayerLeave(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.remove_PlayerLeave(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.add_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.remove_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.add_PlayerEntityDespawn(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.remove_PlayerEntityDespawn(value) end

---@param value function
function ClientEventAPI.add_BlockTexturesLoaded(value) end

---@param value function
function ClientEventAPI.remove_BlockTexturesLoaded(value) end

---@param value IsPlayerReadyDelegate
function ClientEventAPI.add_IsPlayerReady(value) end

---@param value IsPlayerReadyDelegate
function ClientEventAPI.remove_IsPlayerReady(value) end

---@param value OnGamePauseResume
function ClientEventAPI.add_PauseResume(value) end

---@param value OnGamePauseResume
function ClientEventAPI.remove_PauseResume(value) end

---@param value function
function ClientEventAPI.add_LeaveWorld(value) end

---@param value function
function ClientEventAPI.remove_LeaveWorld(value) end

---@param value function
function ClientEventAPI.add_LeftWorld(value) end

---@param value function
function ClientEventAPI.remove_LeftWorld(value) end

---@param value ChatLineDelegate
function ClientEventAPI.add_ChatMessage(value) end

---@param value ChatLineDelegate
function ClientEventAPI.remove_ChatMessage(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function ClientEventAPI.add_BlockChanged(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function ClientEventAPI.remove_BlockChanged(value) end

---@param value Func`2
function ClientEventAPI.add_BeforeActiveSlotChanged(value) end

---@param value Func`2
function ClientEventAPI.remove_BeforeActiveSlotChanged(value) end

---@param value function
function ClientEventAPI.add_AfterActiveSlotChanged(value) end

---@param value function
function ClientEventAPI.remove_AfterActiveSlotChanged(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function ClientEventAPI.add_ChunkDirty(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function ClientEventAPI.remove_ChunkDirty(value) end

---@param value function
function ClientEventAPI.add_LevelFinalize(value) end

---@param value function
function ClientEventAPI.remove_LevelFinalize(value) end

---@param value function
function ClientEventAPI.add_HotkeysChanged(value) end

---@param value function
function ClientEventAPI.remove_HotkeysChanged(value) end

---@param value ClientChatLineDelegate
function ClientEventAPI.add_OnSendChatMessage(value) end

---@param value ClientChatLineDelegate
function ClientEventAPI.remove_OnSendChatMessage(value) end

---@param value EntityDeathDelegate
function ClientEventAPI.add_OnEntityDeath(value) end

---@param value EntityDeathDelegate
function ClientEventAPI.remove_OnEntityDeath(value) end

---@param value MatchGridRecipeDelegate
function ClientEventAPI.add_MatchesGridRecipe(value) end

---@param value MatchGridRecipeDelegate
function ClientEventAPI.remove_MatchesGridRecipe(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.add_PlayerDeath(value) end

---@param value PlayerEventDelegate
function ClientEventAPI.remove_PlayerDeath(value) end

---@param value TestBlockAccessDelegate
function ClientEventAPI.add_OnTestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function ClientEventAPI.remove_OnTestBlockAccess(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function ClientEventAPI.add_MapRegionLoaded(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function ClientEventAPI.remove_MapRegionLoaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function ClientEventAPI.add_MapRegionUnloaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function ClientEventAPI.remove_MapRegionUnloaded(value) end

---@param value OnGetClimateDelegate
function ClientEventAPI.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function ClientEventAPI.remove_OnGetClimate(value) end

---@param value TestBlockAccessDelegate
function ClientEventAPI.add_TestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function ClientEventAPI.remove_TestBlockAccess(value) end

---@param value OnGetWindSpeedDelegate
function ClientEventAPI.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function ClientEventAPI.remove_OnGetWindSpeed(value) end

---@param value IngameErrorDelegate
function ClientEventAPI.add_InGameError(value) end

---@param value IngameErrorDelegate
function ClientEventAPI.remove_InGameError(value) end

---@param value IngameDiscoveryDelegate
function ClientEventAPI.add_InGameDiscovery(value) end

---@param value IngameDiscoveryDelegate
function ClientEventAPI.remove_InGameDiscovery(value) end

---@param value function
function ClientEventAPI.add_ColorsPresetChanged(value) end

---@param value function
function ClientEventAPI.remove_ColorsPresetChanged(value) end

---@param value EntityDelegate
function ClientEventAPI.add_OnEntitySpawn(value) end

---@param value EntityDelegate
function ClientEventAPI.remove_OnEntitySpawn(value) end

---@param value EntityDelegate
function ClientEventAPI.add_OnEntityLoaded(value) end

---@param value EntityDelegate
function ClientEventAPI.remove_OnEntityLoaded(value) end

---@param value EntityDespawnDelegate
function ClientEventAPI.add_OnEntityDespawn(value) end

---@param value EntityDespawnDelegate
function ClientEventAPI.remove_OnEntityDespawn(value) end

---@param value function Return true if the action/event was successfull
function ClientEventAPI.add_ReloadShader(value) end

---@param value function Return true if the action/event was successfull
function ClientEventAPI.remove_ReloadShader(value) end

---@param value function
function ClientEventAPI.add_ReloadTextures(value) end

---@param value function
function ClientEventAPI.remove_ReloadTextures(value) end

---@param value function
function ClientEventAPI.add_ReloadShapes(value) end

---@param value function
function ClientEventAPI.remove_ReloadShapes(value) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@param response EnumWorldAccessResponse
---@return EnumWorldAccessResponse
function ClientEventAPI.TriggerTestBlockAccess(player, blockSel, accessType, claimant, response) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param mapregion IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function ClientEventAPI.TriggerMapregionLoaded(mapCoord, mapregion) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param mapregion IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function ClientEventAPI.TriggerMapregionUnloaded(mapCoord, mapregion) end

---@param chunkCoord Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunk IWorldChunk
---@param reason EnumChunkDirtyReason
function ClientEventAPI.TriggerChunkDirty(chunkCoord, chunk, reason) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param oldBlock Block Basic class for a placeable block
function ClientEventAPI.TriggerBlockChanged(pos, oldBlock) end

---@param plr IClientPlayer A client side player
function ClientEventAPI.TriggerPlayerJoin(plr) end

---@param plr IClientPlayer A client side player
function ClientEventAPI.TriggerPlayerLeave(plr) end

---@param plr IClientPlayer A client side player
function ClientEventAPI.TriggerPlayerEntitySpawn(plr) end

---@param plr IClientPlayer A client side player
function ClientEventAPI.TriggerPlayerEntityDespawn(plr) end

---@param filename string
---@return boolean
function ClientEventAPI.TriggerFileDrop(filename) end

---@param pause boolean
function ClientEventAPI.TriggerPauseResume(pause) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function ClientEventAPI.TriggerMouseDown(ev) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function ClientEventAPI.TriggerMouseUp(ev) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function ClientEventAPI.TriggerMouseMove(ev) end

---@param ev KeyEvent
function ClientEventAPI.TriggerKeyDown(ev) end

---@param ev KeyEvent
function ClientEventAPI.TriggerKeyUp(ev) end

function ClientEventAPI.TriggerLevelFinalize() end

function ClientEventAPI.TriggerLeaveWorld() end

function ClientEventAPI.TriggerLeftWorld() end

function ClientEventAPI.TriggerHotkeysChanged() end

function ClientEventAPI.TriggerBlockTexturesLoaded() end

---@return boolean
function ClientEventAPI.TriggerIsPlayerReady() end

---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param stage EnumRenderStage
---@param profilingName? string
function ClientEventAPI.RegisterRenderer(renderer, stage, profilingName) end

---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param rendererDelegate ItemRenderDelegate A custom itemstack render handler. This method is called after Collectible.OnBeforeRender(). For render target gui, the gui shader and its uniforms are already fully prepared, you may only call RenderMesh() and ignore the modelMat, position and size values - stack sizes however, are not covered by this.
---@param target EnumItemRenderTarget The render taget for an item stack
function ClientEventAPI.RegisterItemstackRenderer(forObj, rendererDelegate, target) end

---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param target EnumItemRenderTarget The render taget for an item stack
function ClientEventAPI.UnregisterItemstackRenderer(forObj, target) end

---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param stage EnumRenderStage
function ClientEventAPI.UnregisterRenderer(renderer, stage) end

---@param handler function
function ClientEventAPI.RegisterReloadShapes(handler) end

---@param handler function
function ClientEventAPI.UnregisterReloadShapes(handler) end

---@param handler function
function ClientEventAPI.RegisterOnLeaveWorld(handler) end

---@param eventName string
---@param data? IAttribute An attribute from an attribute tree
function ClientEventAPI.PushEvent(eventName, data) end

---@param OnEvent EventBusListenerDelegate For handling events on the event bus
---@param priority? number
---@param filterByEventName? string
function ClientEventAPI.RegisterEventBusListener(OnEvent, priority, filterByEventName) end

---@param OnGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventAPI.RegisterGameTickListener(OnGameTick, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventAPI.RegisterGameTickListener(OnGameTick, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientEventAPI.RegisterGameTickListener(OnGameTick, pos, millisecondInterval, initialDelayOffsetMs) end

---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function ClientEventAPI.RegisterCallback(OnTimePassed, millisecondDelay) end

---@param OnTimePassed function
---@param millisecondDelay number
---@param permittedWhilePaused boolean
---@return number
function ClientEventAPI.RegisterCallback(OnTimePassed, millisecondDelay, permittedWhilePaused) end

---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function ClientEventAPI.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

---@param listenerId number
function ClientEventAPI.UnregisterCallback(listenerId) end

---@param listenerId number
function ClientEventAPI.UnregisterGameTickListener(listenerId) end

---@param action function
---@param code string
function ClientEventAPI.EnqueueMainThreadTask(action, code) end

---@param handler ContinousParticleSpawnTaskDelegate Return false to stop spawning particles
function ClientEventAPI.RegisterAsyncParticleSpawner(handler) end

---@param entity Entity The basic class for all entities in the game
---@param damageSourceForDeath DamageSource
function ClientEventAPI.TriggerEntityDeath(entity, damageSourceForDeath) end

---@param forPlayer IPlayer Represents a player
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function ClientEventAPI.TriggerMatchesRecipe(forPlayer, gridRecipe, ingredients, gridWidth) end

---@return userdata
function ClientEventAPI.GetType() end

---@return string
function ClientEventAPI.ToString() end

---@param obj userdata
---@return boolean
function ClientEventAPI.Equals(obj) end

---@return number
function ClientEventAPI.GetHashCode() end


