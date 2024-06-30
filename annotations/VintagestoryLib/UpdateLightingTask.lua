---@meta

---@class UpdateLightingTask
---@field pos BlockPos
---@field oldBlockId number
---@field newBlockId number
---@field oldAbsorb number
---@field newAbsorb number
---@field absorbUpdate boolean
---@field removeLightHsv number
UpdateLightingTask = {}

---@return UpdateLightingTask
function UpdateLightingTask.ctor() end

---@return userdata
function UpdateLightingTask.GetType() end

---@return string
function UpdateLightingTask.ToString() end

---@param obj userdata
---@return boolean
function UpdateLightingTask.Equals(obj) end

---@return number
function UpdateLightingTask.GetHashCode() end


