---@meta

---@class GameBuild
---@field filename string
---@field filesize string
---@field md5 string
---@field urls table
---@field latest boolean
GameBuild = {}

---@return GameBuild
function GameBuild.ctor() end

---@return userdata
function GameBuild.GetType() end

---@return string
function GameBuild.ToString() end

---@param obj userdata
---@return boolean
function GameBuild.Equals(obj) end

---@return number
function GameBuild.GetHashCode() end


