---@meta

---@class ServerCtrlResponse
---@field Code string
---@field Valid number
---@field Reason string
---@field StatusCode string
ServerCtrlResponse = {}

---@return ServerCtrlResponse
function ServerCtrlResponse.ctor() end

---@return userdata
function ServerCtrlResponse.GetType() end

---@return string
function ServerCtrlResponse.ToString() end

---@param obj userdata
---@return boolean
function ServerCtrlResponse.Equals(obj) end

---@return number
function ServerCtrlResponse.GetHashCode() end


