---@meta

---@class GameServerLogResponse: ServerCtrlResponse, ServerCtrlResponse
---@field Log string
---@field Code string
---@field Valid number
---@field Reason string
---@field StatusCode string
GameServerLogResponse = {}

---@return GameServerLogResponse
function GameServerLogResponse.ctor() end

---@return userdata
function GameServerLogResponse.GetType() end

---@return string
function GameServerLogResponse.ToString() end

---@param obj userdata
---@return boolean
function GameServerLogResponse.Equals(obj) end

---@return number
function GameServerLogResponse.GetHashCode() end


