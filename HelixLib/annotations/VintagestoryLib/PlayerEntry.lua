---@meta

---@class PlayerEntry
---@field PlayerUID string
---@field PlayerName string
---@field UntilDate Nullable`1
---@field Reason string
---@field IssuedByPlayerName string
PlayerEntry = {}

---@return PlayerEntry
function PlayerEntry.ctor() end

---@return userdata
function PlayerEntry.GetType() end

---@return string
function PlayerEntry.ToString() end

---@param obj userdata
---@return boolean
function PlayerEntry.Equals(obj) end

---@return number
function PlayerEntry.GetHashCode() end


