---@meta

---@class ResolveResponse
---@field playeruid string
ResolveResponse = {}

---@return ResolveResponse
function ResolveResponse.ctor() end

---@return userdata
function ResolveResponse.GetType() end

---@return string
function ResolveResponse.ToString() end

---@param obj userdata
---@return boolean
function ResolveResponse.Equals(obj) end

---@return number
function ResolveResponse.GetHashCode() end


