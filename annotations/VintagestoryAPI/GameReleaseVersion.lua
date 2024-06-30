---@meta

---@class GameReleaseVersion
---@field Windows GameBuild
---@field Windowsserver GameBuild
---@field Linuxserver GameBuild
---@field Linux GameBuild
---@field Mac GameBuild
GameReleaseVersion = {}

---@return GameReleaseVersion
function GameReleaseVersion.ctor() end

---@return userdata
function GameReleaseVersion.GetType() end

---@return string
function GameReleaseVersion.ToString() end

---@param obj userdata
---@return boolean
function GameReleaseVersion.Equals(obj) end

---@return number
function GameReleaseVersion.GetHashCode() end


