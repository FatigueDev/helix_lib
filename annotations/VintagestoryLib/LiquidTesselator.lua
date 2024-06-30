---@meta

---@class LiquidTesselator:  IBlockTesselator
LiquidTesselator = {}

---@param tct ChunkTesselator
---@return LiquidTesselator
function LiquidTesselator.ctor(tct) end

---@param vars TCTCache
function LiquidTesselator.Tesselate(vars) end

---@return userdata
function LiquidTesselator.GetType() end

---@return string
function LiquidTesselator.ToString() end

---@param obj userdata
---@return boolean
function LiquidTesselator.Equals(obj) end

---@return number
function LiquidTesselator.GetHashCode() end


