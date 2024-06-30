---@meta

---@class ModDbResponse
---@field StatusCode number
ModDbResponse = {}

---@return ModDbResponse
function ModDbResponse.ctor() end

---@return userdata
function ModDbResponse.GetType() end

---@return string
function ModDbResponse.ToString() end

---@param obj userdata
---@return boolean
function ModDbResponse.Equals(obj) end

---@return number
function ModDbResponse.GetHashCode() end


