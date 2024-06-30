---@meta

---@class DashboardWorldConfigObj
---@field Seed string
---@field PlayStyle string
---@field PlayStyleLangCode string
---@field MapSizeY number
---@field RepairMode boolean
---@field WorldConfiguration table
DashboardWorldConfigObj = {}

---@return DashboardWorldConfigObj
function DashboardWorldConfigObj.ctor() end

---@return userdata
function DashboardWorldConfigObj.GetType() end

---@return string
function DashboardWorldConfigObj.ToString() end

---@param obj userdata
---@return boolean
function DashboardWorldConfigObj.Equals(obj) end

---@return number
function DashboardWorldConfigObj.GetHashCode() end


