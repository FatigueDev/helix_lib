---@meta

---@class GameVersionEntry
---@field TagId number
---@field Name string
GameVersionEntry = {}

---@return GameVersionEntry
function GameVersionEntry.ctor() end

---@return userdata
function GameVersionEntry.GetType() end

---@return string
function GameVersionEntry.ToString() end

---@param obj userdata
---@return boolean
function GameVersionEntry.Equals(obj) end

---@return number
function GameVersionEntry.GetHashCode() end


