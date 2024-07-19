---@meta

---@class DatabaseUpgraderToVersion2:  IDatabaseUpgrader
DatabaseUpgraderToVersion2 = {}

---@return DatabaseUpgraderToVersion2
function DatabaseUpgraderToVersion2.ctor() end

---@param server ServerMain
---@param worldFilename string
---@return boolean
function DatabaseUpgraderToVersion2.Upgrade(server, worldFilename) end

---@return userdata
function DatabaseUpgraderToVersion2.GetType() end

---@return string
function DatabaseUpgraderToVersion2.ToString() end

---@param obj userdata
---@return boolean
function DatabaseUpgraderToVersion2.Equals(obj) end

---@return number
function DatabaseUpgraderToVersion2.GetHashCode() end


