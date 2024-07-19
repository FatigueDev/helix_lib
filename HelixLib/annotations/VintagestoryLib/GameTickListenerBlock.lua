---@meta

---@class GameTickListenerBlock
---@field Pos BlockPos
---@field Handler function
---@field Millisecondinterval number
---@field LastUpdateMilliseconds number
---@field ListenerId number
GameTickListenerBlock = {}

---@return GameTickListenerBlock
function GameTickListenerBlock.ctor() end

---@return userdata
function GameTickListenerBlock.GetType() end

---@return string
function GameTickListenerBlock.ToString() end

---@param obj userdata
---@return boolean
function GameTickListenerBlock.Equals(obj) end

---@return number
function GameTickListenerBlock.GetHashCode() end


