---@meta

---@class ServerHostResolveResp
---@field Host string
---@field Valid number
---@field Status string
ServerHostResolveResp = {}

---@return ServerHostResolveResp
function ServerHostResolveResp.ctor() end

---@return userdata
function ServerHostResolveResp.GetType() end

---@return string
function ServerHostResolveResp.ToString() end

---@param obj userdata
---@return boolean
function ServerHostResolveResp.Equals(obj) end

---@return number
function ServerHostResolveResp.GetHashCode() end


