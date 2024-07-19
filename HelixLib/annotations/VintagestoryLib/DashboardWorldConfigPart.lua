---@meta

---@class DashboardWorldConfigPart
---@field MapSizeY number
---@field WorldConfig DashboardWorldConfigObj
DashboardWorldConfigPart = {}

---@return DashboardWorldConfigPart
function DashboardWorldConfigPart.ctor() end

---@return userdata
function DashboardWorldConfigPart.GetType() end

---@return string
function DashboardWorldConfigPart.ToString() end

---@param obj userdata
---@return boolean
function DashboardWorldConfigPart.Equals(obj) end

---@return number
function DashboardWorldConfigPart.GetHashCode() end


