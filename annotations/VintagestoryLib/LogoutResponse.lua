---@meta

---@class LogoutResponse
---@field valid number
LogoutResponse = {}

---@return LogoutResponse
function LogoutResponse.ctor() end

---@return userdata
function LogoutResponse.GetType() end

---@return string
function LogoutResponse.ToString() end

---@param obj userdata
---@return boolean
function LogoutResponse.Equals(obj) end

---@return number
function LogoutResponse.GetHashCode() end


