---@meta

---@class GameVersionResponse: ModDbResponse, ModDbResponse
---@field GameVersions GameVersionEntry[]
---@field StatusCode number
GameVersionResponse = {}

---@return GameVersionResponse
function GameVersionResponse.ctor() end

---@return userdata
function GameVersionResponse.GetType() end

---@return string
function GameVersionResponse.ToString() end

---@param obj userdata
---@return boolean
function GameVersionResponse.Equals(obj) end

---@return number
function GameVersionResponse.GetHashCode() end


