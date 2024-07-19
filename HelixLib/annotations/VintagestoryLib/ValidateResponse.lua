---@meta

---@class ValidateResponse
---@field valid number
---@field entitlements string
---@field reason string
---@field hasgameserver boolean
ValidateResponse = {}

---@return ValidateResponse
function ValidateResponse.ctor() end

---@return userdata
function ValidateResponse.GetType() end

---@return string
function ValidateResponse.ToString() end

---@param obj userdata
---@return boolean
function ValidateResponse.Equals(obj) end

---@return number
function ValidateResponse.GetHashCode() end


