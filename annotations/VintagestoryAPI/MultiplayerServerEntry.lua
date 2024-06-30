---@meta

---@class MultiplayerServerEntry
---@field index number
---@field name string
---@field host string
---@field password string
MultiplayerServerEntry = {}

---@return MultiplayerServerEntry
function MultiplayerServerEntry.ctor() end

---@return userdata
function MultiplayerServerEntry.GetType() end

---@return string
function MultiplayerServerEntry.ToString() end

---@param obj userdata
---@return boolean
function MultiplayerServerEntry.Equals(obj) end

---@return number
function MultiplayerServerEntry.GetHashCode() end


