---@meta

---@class ClientStatistics
---@field client ConnectedClient
---@field lastChunkX number
---@field lastChunkY number
---@field lastChunkZ number
ClientStatistics = {}

---@return ClientStatistics
function ClientStatistics.ctor() end

---@return userdata
function ClientStatistics.GetType() end

---@return string
function ClientStatistics.ToString() end

---@param obj userdata
---@return boolean
function ClientStatistics.Equals(obj) end

---@return number
function ClientStatistics.GetHashCode() end


