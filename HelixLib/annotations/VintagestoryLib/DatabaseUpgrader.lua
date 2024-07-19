---@meta

---@class DatabaseUpgrader
DatabaseUpgrader = {}

---@param server ServerMain
---@param worldFilename string
---@param curVersion number
---@param destVersion number
---@return DatabaseUpgrader
function DatabaseUpgrader.ctor(server, worldFilename, curVersion, destVersion) end

function DatabaseUpgrader.PerformUpgrade() end

---@return userdata
function DatabaseUpgrader.GetType() end

---@return string
function DatabaseUpgrader.ToString() end

---@param obj userdata
---@return boolean
function DatabaseUpgrader.Equals(obj) end

---@return number
function DatabaseUpgrader.GetHashCode() end


