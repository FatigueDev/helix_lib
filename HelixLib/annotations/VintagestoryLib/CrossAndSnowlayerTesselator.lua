---@meta

---@class CrossAndSnowlayerTesselator:  IBlockTesselator
CrossAndSnowlayerTesselator = {}

---@param blockheight number
---@return CrossAndSnowlayerTesselator
function CrossAndSnowlayerTesselator.ctor(blockheight) end

---@param vars TCTCache
function CrossAndSnowlayerTesselator.Tesselate(vars) end

---@return userdata
function CrossAndSnowlayerTesselator.GetType() end

---@return string
function CrossAndSnowlayerTesselator.ToString() end

---@param obj userdata
---@return boolean
function CrossAndSnowlayerTesselator.Equals(obj) end

---@return number
function CrossAndSnowlayerTesselator.GetHashCode() end


