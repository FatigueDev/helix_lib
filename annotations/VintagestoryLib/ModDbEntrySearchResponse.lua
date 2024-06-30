---@meta

---@class ModDbEntrySearchResponse
---@field ModId number
---@field ModIdStrs string
---@field Name string
---@field Comments number
---@field Downloads number
---@field Logo string
---@field Author string
---@field Side string
---@field Type string
---@field Tags string
ModDbEntrySearchResponse = {}

---@return ModDbEntrySearchResponse
function ModDbEntrySearchResponse.ctor() end

---@return userdata
function ModDbEntrySearchResponse.GetType() end

---@return string
function ModDbEntrySearchResponse.ToString() end

---@param obj userdata
---@return boolean
function ModDbEntrySearchResponse.Equals(obj) end

---@return number
function ModDbEntrySearchResponse.GetHashCode() end


