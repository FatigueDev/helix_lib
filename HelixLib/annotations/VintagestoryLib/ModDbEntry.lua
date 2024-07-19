---@meta

---@class ModDbEntry
---@field ModId number
---@field Name string
---@field LogoFilename string
---@field Text string
---@field Releases ModEntryRelease[]
---@field Side string
ModDbEntry = {}

---@return ModDbEntry
function ModDbEntry.ctor() end

---@return userdata
function ModDbEntry.GetType() end

---@return string
function ModDbEntry.ToString() end

---@param obj userdata
---@return boolean
function ModDbEntry.Equals(obj) end

---@return number
function ModDbEntry.GetHashCode() end


