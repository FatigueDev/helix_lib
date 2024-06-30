---@meta

---@class GameServerStatus: ServerCtrlResponse, ServerCtrlResponse
---@field ConnectionString string
---@field Identifier string
---@field Version string
---@field Password string
---@field ActiveserverDays number
---@field QuantitySavegames number
---@field DownloadState EnumDownloadSavesStatus
---@field Downloadsavefilename string
---@field Regions string
---@field Code string
---@field Valid number
---@field Reason string
---@field StatusCode string
GameServerStatus = {}

---@return GameServerStatus
function GameServerStatus.ctor() end

---@return userdata
function GameServerStatus.GetType() end

---@return string
function GameServerStatus.ToString() end

---@param obj userdata
---@return boolean
function GameServerStatus.Equals(obj) end

---@return number
function GameServerStatus.GetHashCode() end


