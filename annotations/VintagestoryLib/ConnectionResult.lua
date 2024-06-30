---@meta

---@class ConnectionResult
---@field connected boolean
---@field errorMessage string
ConnectionResult = {}

---@return ConnectionResult
function ConnectionResult.ctor() end

---@return userdata
function ConnectionResult.GetType() end

---@return string
function ConnectionResult.ToString() end

---@param obj userdata
---@return boolean
function ConnectionResult.Equals(obj) end

---@return number
function ConnectionResult.GetHashCode() end


