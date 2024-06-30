---@meta

---@class ServerInformation
ServerInformation = {}

---@return ServerInformation
function ServerInformation.ctor() end

---@return userdata
function ServerInformation.GetType() end

---@return string
function ServerInformation.ToString() end

---@param obj userdata
---@return boolean
function ServerInformation.Equals(obj) end

---@return number
function ServerInformation.GetHashCode() end


