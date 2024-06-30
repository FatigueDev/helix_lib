---@meta

-- Events that are available on the server and the client
---@class IEventAPI
---@field OnTestBlockAccess TestBlockAccessDelegate Triggered when block access is tested, allows you to override the engine response
---@field OnEntitySpawn EntityDelegate Triggered when a new entity spawned
---@field OnEntityLoaded EntityDelegate Triggered when a new entity got loaded (either spawned or loaded from disk)
---@field OnEntityDeath EntityDeathDelegate
---@field OnEntityDespawn EntityDespawnDelegate Triggered when a new entity despawned
---@field ChunkDirty ChunkDirtyDelegate Called whenever a chunk was marked dirty (as in, its blocks or light values have been modified or it got newly loaded or newly created)
---@field MapRegionLoaded MapRegionLoadedDelegate Called whenever the server loaded from disk or newly generated a map region
---@field MapRegionUnloaded MapRegionUnloadDelegate Called just before a map region is about to get unloaded. On shutdown this method is called for all loaded map regions.
---@field OnGetClimate OnGetClimateDelegate Called whenever any method calls world.BlockAccessor.GetClimateAt(). Used by the survival mod to modify the rainfall and temperature values to adjust for seasonal and day/night temperature variations. Be sure to also register to OnGetClimateForDate.
---@field OnGetWindSpeed OnGetWindSpeedDelegate Called whenever any method calls world.BlockAccessor.GetWindSpeedAt(). Used by the survival mod to set the wind speed
---@field MatchesGridRecipe MatchGridRecipeDelegate Called when a player tries to gridcraft something 
IEventAPI = {}


---@param value TestBlockAccessDelegate
function IEventAPI.add_OnTestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function IEventAPI.remove_OnTestBlockAccess(value) end

---@param value EntityDelegate
function IEventAPI.add_OnEntitySpawn(value) end

---@param value EntityDelegate
function IEventAPI.remove_OnEntitySpawn(value) end

---@param value EntityDelegate
function IEventAPI.add_OnEntityLoaded(value) end

---@param value EntityDelegate
function IEventAPI.remove_OnEntityLoaded(value) end

---@param value EntityDeathDelegate
function IEventAPI.add_OnEntityDeath(value) end

---@param value EntityDeathDelegate
function IEventAPI.remove_OnEntityDeath(value) end

---@param value EntityDespawnDelegate
function IEventAPI.add_OnEntityDespawn(value) end

---@param value EntityDespawnDelegate
function IEventAPI.remove_OnEntityDespawn(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function IEventAPI.add_ChunkDirty(value) end

---@param value ChunkDirtyDelegate For handling dirty chunks
function IEventAPI.remove_ChunkDirty(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function IEventAPI.add_MapRegionLoaded(value) end

---@param value MapRegionLoadedDelegate Triggered when the server loaded a map region from disk or generated a new one
function IEventAPI.remove_MapRegionLoaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function IEventAPI.add_MapRegionUnloaded(value) end

---@param value MapRegionUnloadDelegate Triggered just before a map region gets unloaded
function IEventAPI.remove_MapRegionUnloaded(value) end

---@param value OnGetClimateDelegate
function IEventAPI.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function IEventAPI.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function IEventAPI.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function IEventAPI.remove_OnGetWindSpeed(value) end

---@param value MatchGridRecipeDelegate
function IEventAPI.add_MatchesGridRecipe(value) end

---@param value MatchGridRecipeDelegate
function IEventAPI.remove_MatchesGridRecipe(value) end

-- There's 2 global event busses, 1 on the client and 1 on the server. This pushes an event onto the bus.
---@param eventName string
---@param data? IAttribute An attribute from an attribute tree
function IEventAPI.PushEvent(eventName, data) end

-- Registers a listener on the event bus. This is intended for mods as the game engine itself does not push any events.
---@param OnEvent EventBusListenerDelegate For handling events on the event bus
---@param priority? number
---@param filterByEventName? string
function IEventAPI.RegisterEventBusListener(OnEvent, priority, filterByEventName) end

-- Calls given method after every given interval until unregistered. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param onGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function IEventAPI.RegisterGameTickListener(onGameTick, millisecondInterval, initialDelayOffsetMs) end

-- Calls given method after every given interval until unregistered. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
-- This overload includes an ErrorHandler callback, triggered if calling onGameTick throws an exception
---@param onGameTick function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function IEventAPI.RegisterGameTickListener(onGameTick, errorHandler, millisecondInterval, initialDelayOffsetMs) end

-- Calls given method after every given interval until unregistered. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param onGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function IEventAPI.RegisterGameTickListener(onGameTick, pos, millisecondInterval, initialDelayOffsetMs) end

-- Calls given method after supplied amount of milliseconds. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function IEventAPI.RegisterCallback(OnTimePassed, millisecondDelay) end

-- Calls given method after supplied amount of milliseconds. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
-- This overload can be used to signify callbacks which do no harm if registered while the game is paused (otherwise, registering a callback while paused will produce an error in logs, or an intentional exception in Developer Mode)
---@param OnTimePassed function
---@param millisecondDelay number
---@param permittedWhilePaused boolean
---@return number
function IEventAPI.RegisterCallback(OnTimePassed, millisecondDelay, permittedWhilePaused) end

-- Calls given method after supplied amount of milliseconds, lets you supply a block position to be passed to the method. The engine may call your method slightly later since these event are handled only during fixed interval game ticks.
---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function IEventAPI.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

-- Removes a delayed callback
---@param listenerId number
function IEventAPI.UnregisterCallback(listenerId) end

-- Removes a game tick listener
---@param listenerId number
function IEventAPI.UnregisterGameTickListener(listenerId) end

-- Can be used to execute supplied method a frame later or can be called from a seperate thread to ensure some code is executed in the main thread. Calling this method is thread safe.
---@param action function
---@param code string
function IEventAPI.EnqueueMainThreadTask(action, code) end

---@param entity Entity The basic class for all entities in the game
---@param damageSourceForDeath DamageSource
function IEventAPI.TriggerEntityDeath(entity, damageSourceForDeath) end

---@param forPlayer IPlayer Represents a player
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function IEventAPI.TriggerMatchesRecipe(forPlayer, gridRecipe, ingredients, gridWidth) end


