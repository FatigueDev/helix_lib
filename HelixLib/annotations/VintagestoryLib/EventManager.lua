---@meta

---@class EventManager
---@field Logger ILogger
---@field CommandPrefix string
---@field InWorldEllapsedMs number
---@field OnGetClimate OnGetClimateDelegate
---@field OnGetWindSpeed OnGetWindSpeedDelegate
EventManager = {}


---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function EventManager.get_Logger() end

---@return string
function EventManager.get_CommandPrefix() end

---@param playerUid string
---@param privilegecode string
---@return boolean
function EventManager.HasPrivilege(playerUid, privilegecode) end

---@return number
function EventManager.get_InWorldEllapsedMs() end

---@param value OnGetClimateDelegate
function EventManager.add_OnGetClimate(value) end

---@param value OnGetClimateDelegate
function EventManager.remove_OnGetClimate(value) end

---@param value OnGetWindSpeedDelegate
function EventManager.add_OnGetWindSpeed(value) end

---@param value OnGetWindSpeedDelegate
function EventManager.remove_OnGetWindSpeed(value) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
function EventManager.TriggerOnGetClimate(climate, pos, mode, totalDays) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
function EventManager.TriggerOnGetWindSpeed(pos, windSpeed) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function EventManager.TriggerGameTick(ellapsedMilliseconds, world) end

---@param ellapsedMilliseconds number
---@param world IWorldAccessor Important interface to access the game world.
function EventManager.TriggerGameTickDebug(ellapsedMilliseconds, world) end

---@param handler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function EventManager.AddGameTickListener(handler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function EventManager.AddGameTickListener(handler, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function EventManager.AddGameTickListener(handler, pos, millisecondInterval, initialDelayOffsetMs) end

---@param handler function
---@param callAfterEllapsedMS number
---@return number
function EventManager.AddDelayedCallback(handler, callAfterEllapsedMS) end

---@param handler function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param callAfterEllapsedMS number
---@return number
function EventManager.AddDelayedCallback(handler, pos, callAfterEllapsedMS) end

---@param listenerId number
function EventManager.RemoveDelayedCallback(listenerId) end

---@param listenerId number
function EventManager.RemoveGameTickListener(listenerId) end

---@return userdata
function EventManager.GetType() end

---@return string
function EventManager.ToString() end

---@param obj userdata
---@return boolean
function EventManager.Equals(obj) end

---@return number
function EventManager.GetHashCode() end


