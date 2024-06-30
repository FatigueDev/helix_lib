---@meta

---@class CrossTesselator:  IBlockTesselator
CrossTesselator = {}

---@return CrossTesselator
function CrossTesselator.ctor() end

---@param vars TCTCache
function CrossTesselator.Tesselate(vars) end

---@param vars TCTCache
---@param vScaleY number
function CrossTesselator.DrawCross(vars, vScaleY) end

---@return userdata
function CrossTesselator.GetType() end

---@return string
function CrossTesselator.ToString() end

---@param obj userdata
---@return boolean
function CrossTesselator.Equals(obj) end

---@return number
function CrossTesselator.GetHashCode() end


