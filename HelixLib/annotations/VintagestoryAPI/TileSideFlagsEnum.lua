---@meta

---@class TileSideFlagsEnum
---@field None number
---@field North number
---@field East number
---@field South number
---@field West number
---@field Up number
---@field Down number
---@field All number
TileSideFlagsEnum = {}

---@return TileSideFlagsEnum
function TileSideFlagsEnum.ctor() end

---@param nFlagA number
---@param nFlagB number
---@return boolean
function TileSideFlagsEnum.HasFlag(nFlagA, nFlagB) end

---@return userdata
function TileSideFlagsEnum.GetType() end

---@return string
function TileSideFlagsEnum.ToString() end

---@param obj userdata
---@return boolean
function TileSideFlagsEnum.Equals(obj) end

---@return number
function TileSideFlagsEnum.GetHashCode() end


