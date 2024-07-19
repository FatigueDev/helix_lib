---@meta

---@class LoginResponse
---@field valid number
---@field reason string
---@field reasondata string
---@field sessionkey string
---@field sessionsignature string
---@field uid string
---@field playername string
---@field entitlements string
---@field hasgameserver boolean
LoginResponse = {}

---@return LoginResponse
function LoginResponse.ctor() end

---@return userdata
function LoginResponse.GetType() end

---@return string
function LoginResponse.ToString() end

---@param obj userdata
---@return boolean
function LoginResponse.Equals(obj) end

---@return number
function LoginResponse.GetHashCode() end


