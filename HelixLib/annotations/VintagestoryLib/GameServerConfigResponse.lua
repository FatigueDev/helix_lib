---@meta

---@class GameServerConfigResponse: ServerCtrlResponse, ServerCtrlResponse
---@field ServerConfig ServerConfigPart
---@field WorldConfig JsonObject
---@field Mods string
---@field Code string
---@field Valid number
---@field Reason string
---@field StatusCode string
GameServerConfigResponse = {}

---@return GameServerConfigResponse
function GameServerConfigResponse.ctor() end

---@return userdata
function GameServerConfigResponse.GetType() end

---@return string
function GameServerConfigResponse.ToString() end

---@param obj userdata
---@return boolean
function GameServerConfigResponse.Equals(obj) end

---@return number
function GameServerConfigResponse.GetHashCode() end


