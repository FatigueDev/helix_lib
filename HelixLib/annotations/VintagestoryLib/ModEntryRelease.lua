---@meta

---@class ModEntryRelease
---@field Filename string
---@field Fileid string
---@field Tags string
---@field ModVersion string
---@field ModIdStr string
---@field HostedModeAllow boolean
ModEntryRelease = {}

---@return ModEntryRelease
function ModEntryRelease.ctor() end

---@return userdata
function ModEntryRelease.GetType() end

---@return string
function ModEntryRelease.ToString() end

---@param obj userdata
---@return boolean
function ModEntryRelease.Equals(obj) end

---@return number
function ModEntryRelease.GetHashCode() end


