---@meta

---@class ModSearchResult: ModDbResponse, ModDbResponse
---@field StatusMessage string
---@field Mods ModDbEntrySearchResponse[]
---@field StatusCode number
ModSearchResult = {}

---@return ModSearchResult
function ModSearchResult.ctor() end

---@return userdata
function ModSearchResult.GetType() end

---@return string
function ModSearchResult.ToString() end

---@param obj userdata
---@return boolean
function ModSearchResult.Equals(obj) end

---@return number
function ModSearchResult.GetHashCode() end


