---@meta

---@class JsonAndLiquidTesselator:  IBlockTesselator
JsonAndLiquidTesselator = {}

---@param tct ChunkTesselator
---@return JsonAndLiquidTesselator
function JsonAndLiquidTesselator.ctor(tct) end

---@param vars TCTCache
function JsonAndLiquidTesselator.Tesselate(vars) end

---@return userdata
function JsonAndLiquidTesselator.GetType() end

---@return string
function JsonAndLiquidTesselator.ToString() end

---@param obj userdata
---@return boolean
function JsonAndLiquidTesselator.Equals(obj) end

---@return number
function JsonAndLiquidTesselator.GetHashCode() end


