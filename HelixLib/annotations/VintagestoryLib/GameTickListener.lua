---@meta

---@class GameTickListener
---@field Handler function
---@field Millisecondinterval number
---@field LastUpdateMilliseconds number
---@field ListenerId number
---@field ErrorHandler function
GameTickListener = {}

---@return GameTickListener
function GameTickListener.ctor() end

---@param ellapsedMilliseconds number
function GameTickListener.OnTriggered(ellapsedMilliseconds) end

---@return userdata
function GameTickListener.Origin() end

---@return userdata
function GameTickListener.GetType() end

---@return string
function GameTickListener.ToString() end

---@param obj userdata
---@return boolean
function GameTickListener.Equals(obj) end

---@return number
function GameTickListener.GetHashCode() end


