---@meta

---@class ModDbEntryResponse: ModDbResponse, ModDbResponse
---@field Mod ModDbEntry
---@field StatusCode number
ModDbEntryResponse = {}

---@return ModDbEntryResponse
function ModDbEntryResponse.ctor() end

---@return userdata
function ModDbEntryResponse.GetType() end

---@return string
function ModDbEntryResponse.ToString() end

---@param obj userdata
---@return boolean
function ModDbEntryResponse.Equals(obj) end

---@return number
function ModDbEntryResponse.GetHashCode() end


