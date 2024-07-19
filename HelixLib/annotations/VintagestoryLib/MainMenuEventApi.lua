---@meta

---@class MainMenuEventApi:  IClientEventAPI, IEventAPI
---@field ChatMessage ChatLineDelegate
---@field OnSendChatMessage ClientChatLineDelegate
---@field PlayerJoin PlayerEventDelegate
---@field PlayerLeave PlayerEventDelegate
---@field PlayerEntitySpawn PlayerEventDelegate
---@field PlayerEntityDespawn PlayerEventDelegate
---@field PauseResume OnGamePauseResume
---@field LeaveWorld function
---@field BlockChanged BlockChangedDelegate
---@field BeforeActiveSlotChanged Func`2
---@field AfterActiveSlotChanged function
---@field InGameError IngameErrorDelegate
---@field InGameDiscovery IngameDiscoveryDelegate
---@field BlockTexturesLoaded function
---@field ReloadShader function
---@field ReloadTextures function
---@field LevelFinalize function
---@field ReloadShapes function
---@field HotkeysChanged function
---@field MouseDown MouseEventDelegate
---@field MouseUp MouseEventDelegate
---@field MouseMove MouseEventDelegate
---@field KeyDown KeyEventDelegate
---@field KeyUp KeyEventDelegate
---@field FileDrop FileDropDelegate
---@field OnEntitySpawn EntityDelegate
---@field OnEntityLoaded EntityDelegate
---@field OnEntityDeath EntityDeathDelegate
---@field OnEntityDespawn EntityDespawnDelegate
---@field ChunkDirty ChunkDirtyDelegate
---@field OnGetClimate OnGetClimateDelegate
---@field OnGetWindSpeed OnGetWindSpeedDelegate
---@field LeftWorld function
---@field IsPlayerReady IsPlayerReadyDelegate
---@field MatchesGridRecipe MatchGridRecipeDelegate
---@field PlayerDeath PlayerEventDelegate
---@field OnTestBlockAccess TestBlockAccessDelegate
---@field MapRegionLoaded MapRegionLoadedDelegate
---@field MapRegionUnloaded MapRegionUnloadDelegate
---@field ColorsPresetChanged function
---@field TestBlockAccess TestBlockAccessDelegate
MainMenuEventApi = {}

---@return MainMenuEventApi
function MainMenuEventApi.ctor() end

---@param value ChatLineDelegate
function MainMenuEventApi.add_ChatMessage(value) end

---@param value ChatLineDelegate
function MainMenuEventApi.remove_ChatMessage(value) end

---@param value ClientChatLineDelegate
function MainMenuEventApi.add_OnSendChatMessage(value) end

---@param value ClientChatLineDelegate
function MainMenuEventApi.remove_OnSendChatMessage(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.add_PlayerJoin(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.remove_PlayerJoin(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.add_PlayerLeave(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.remove_PlayerLeave(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.add_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.remove_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.add_PlayerEntityDespawn(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.remove_PlayerEntityDespawn(value) end

---@param value OnGamePauseResume
function MainMenuEventApi.add_PauseResume(value) end

---@param value OnGamePauseResume
function MainMenuEventApi.remove_PauseResume(value) end

---@param value function
function MainMenuEventApi.add_LeaveWorld(value) end

---@param value function
function MainMenuEventApi.remove_LeaveWorld(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function MainMenuEventApi.add_BlockChanged(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function MainMenuEventApi.remove_BlockChanged(value) end

---@param value Func`2
function MainMenuEventApi.add_BeforeActiveSlotChanged(value) end

---@param value Func`2
function MainMenuEventApi.remove_BeforeActiveSlotChanged(value) end

---@param value function
function MainMenuEventApi.add_AfterActiveSlotChanged(value) end

---@param value function
function MainMenuEventApi.remove_AfterActiveSlotChanged(value) end

---@param value IngameErrorDelegate
function MainMenuEventApi.add_InGameError(value) end

---@param value IngameErrorDelegate
function MainMenuEventApi.remove_InGameError(value) end

---@param value IngameDiscoveryDelegate
function MainMenuEventApi.add_InGameDiscovery(value) end

---@param value IngameDiscoveryDelegate
function MainMenuEventApi.remove_InGameDiscovery(value) end

---@param value function
function MainMenuEventApi.add_BlockTexturesLoaded(value) end

---@param value function
function MainMenuEventApi.remove_BlockTexturesLoaded(value) end

---@param value function Return true if the action/event was successfull
function MainMenuEventApi.add_ReloadShader(value) end

---@param value function Return true if the action/event was successfull
function MainMenuEventApi.remove_ReloadShader(value) end

---@param value function
function MainMenuEventApi.add_ReloadTextures(value) end

---@param value function
function MainMenuEventApi.remove_ReloadTextures(value) end

---@param value function
function MainMenuEventApi.add_LevelFinalize(value) end

---@param value function
function MainMenuEventApi.remove_LevelFinalize(value) end

---@param value function
function MainMenuEventApi.add_ReloadShapes(value) end

---@param value function
function MainMenuEventApi.remove_ReloadShapes(value) end

---@param value function
function MainMenuEventApi.add_HotkeysChanged(value) end

---@param value function
function MainMenuEventApi.remove_HotkeysChanged(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.add_MouseDown(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.remove_MouseDown(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.add_MouseUp(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.remove_MouseUp(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.add_MouseMove(value) end

---@param value MouseEventDelegate
function MainMenuEventApi.remove_MouseMove(value) end

---@param value KeyEventDelegate
function MainMenuEventApi.add_KeyDown(value) end

---@param value KeyEventDelegate
function MainMenuEventApi.remove_KeyDown(value) end

---@param value KeyEventDelegate
function MainMenuEventApi.add_KeyUp(value) end

---@param value KeyEventDelegate
function MainMenuEventApi.remove_KeyUp(value) end

---@param value FileDropDelegate
function MainMenuEventApi.add_FileDrop(value) end

---@param value FileDropDelegate
function MainMenuEventApi.remove_FileDrop(value) end

---@param value EntityDelegate
function MainMenuEventApi.add_OnEntitySpawn(value) end

---@param value EntityDelegate
function MainMenuEventApi.remove_OnEntitySpawn(value) end

---@param value EntityDelegate
function MainMenuEventApi.add_OnEntityLoaded(value) end

---@param value EntityDelegate
function MainMenuEventApi.remove_OnEntityLoaded(value) end

---@param value EntityDeathDelegate
function MainMenuEventApi.add_OnEntityDeath(value) end

---@param value EntityDeathDelegate
function MainMenuEventApi.remove_OnEntityDeath(value) end

---@param value EntityDespawnDelegate
function MainMenuEventApi.add_OnEntityDespawn(value) end

---@param value EntityDespawnDelegate
function MainMenuEventApi.remove_OnEntityDespawn(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function MainMenuEventApi.add_ChunkDirty(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function MainMenuEventApi.remove_ChunkDirty(value) end

---@param value OnGetClimateDelegate
function MainMenuEventApi.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function MainMenuEventApi.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function MainMenuEventApi.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function MainMenuEventApi.remove_OnGetWindSpeed(value) end

---@param value function
function MainMenuEventApi.add_LeftWorld(value) end

---@param value function
function MainMenuEventApi.remove_LeftWorld(value) end

---@param value IsPlayerReadyDelegate
function MainMenuEventApi.add_IsPlayerReady(value) end

---@param value IsPlayerReadyDelegate
function MainMenuEventApi.remove_IsPlayerReady(value) end

---@param value MatchGridRecipeDelegate
function MainMenuEventApi.add_MatchesGridRecipe(value) end

---@param value MatchGridRecipeDelegate
function MainMenuEventApi.remove_MatchesGridRecipe(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.add_PlayerDeath(value) end

---@param value PlayerEventDelegate
function MainMenuEventApi.remove_PlayerDeath(value) end

---@param value TestBlockAccessDelegate
function MainMenuEventApi.add_OnTestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function MainMenuEventApi.remove_OnTestBlockAccess(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function MainMenuEventApi.add_MapRegionLoaded(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function MainMenuEventApi.remove_MapRegionLoaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function MainMenuEventApi.add_MapRegionUnloaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function MainMenuEventApi.remove_MapRegionUnloaded(value) end

---@param value function
function MainMenuEventApi.add_ColorsPresetChanged(value) end

---@param value function
function MainMenuEventApi.remove_ColorsPresetChanged(value) end

---@param value TestBlockAccessDelegate
function MainMenuEventApi.add_TestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function MainMenuEventApi.remove_TestBlockAccess(value) end

---@param action function
---@param code string
function MainMenuEventApi.EnqueueMainThreadTask(action, code) end

---@param eventName string
---@param data? IAttribute An attribute from an attribute tree
function MainMenuEventApi.PushEvent(eventName, data) end

---@param handler ContinousParticleSpawnTaskDelegate Return false to stop spawning particles
function MainMenuEventApi.RegisterAsyncParticleSpawner(handler) end

---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function MainMenuEventApi.RegisterCallback(OnTimePassed, millisecondDelay) end

---@param OnTimePassed function
---@param millisecondDelay number
---@param permittedWhilePaused boolean
---@return number
function MainMenuEventApi.RegisterCallback(OnTimePassed, millisecondDelay, permittedWhilePaused) end

---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function MainMenuEventApi.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

---@param OnEvent EventBusListenerDelegate For handling events on the event bus
---@param priority? number
---@param filterByEventName? string
function MainMenuEventApi.RegisterEventBusListener(OnEvent, priority, filterByEventName) end

---@param OnGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function MainMenuEventApi.RegisterGameTickListener(OnGameTick, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function MainMenuEventApi.RegisterGameTickListener(OnGameTick, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function MainMenuEventApi.RegisterGameTickListener(OnGameTick, pos, millisecondInterval, initialDelayOffsetMs) end

---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param rendererDelegate ItemRenderDelegate A custom itemstack render handler. This method is called after Collectible.OnBeforeRender(). For render target gui, the gui shader and its uniforms are already fully prepared, you may only call RenderMesh() and ignore the modelMat, position and size values - stack sizes however, are not covered by this.
---@param target EnumItemRenderTarget The render taget for an item stack
function MainMenuEventApi.RegisterItemstackRenderer(forObj, rendererDelegate, target) end

---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param renderStage EnumRenderStage
---@param profilingName? string
function MainMenuEventApi.RegisterRenderer(renderer, renderStage, profilingName) end

---@param entity Entity The basic class for all entities in the game
---@param damageSourceForDeath DamageSource
function MainMenuEventApi.TriggerEntityDeath(entity, damageSourceForDeath) end

---@param forPlayer IPlayer Represents a player
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function MainMenuEventApi.TriggerMatchesRecipe(forPlayer, gridRecipe, ingredients, gridWidth) end

---@param listenerId number
function MainMenuEventApi.UnregisterCallback(listenerId) end

---@param listenerId number
function MainMenuEventApi.UnregisterGameTickListener(listenerId) end

---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param target EnumItemRenderTarget The render taget for an item stack
function MainMenuEventApi.UnregisterItemstackRenderer(forObj, target) end

---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param renderStage EnumRenderStage
function MainMenuEventApi.UnregisterRenderer(renderer, renderStage) end

---@return userdata
function MainMenuEventApi.GetType() end

---@return string
function MainMenuEventApi.ToString() end

---@param obj userdata
---@return boolean
function MainMenuEventApi.Equals(obj) end

---@return number
function MainMenuEventApi.GetHashCode() end


