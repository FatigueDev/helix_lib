---@meta

---@class JsonAndSnowLayerTesselator:  IBlockTesselator
JsonAndSnowLayerTesselator = {}

---@return JsonAndSnowLayerTesselator
function JsonAndSnowLayerTesselator.ctor() end

---@param vars TCTCache
function JsonAndSnowLayerTesselator.Tesselate(vars) end

---@return userdata
function JsonAndSnowLayerTesselator.GetType() end

---@return string
function JsonAndSnowLayerTesselator.ToString() end

---@param obj userdata
---@return boolean
function JsonAndSnowLayerTesselator.Equals(obj) end

---@return number
function JsonAndSnowLayerTesselator.GetHashCode() end


