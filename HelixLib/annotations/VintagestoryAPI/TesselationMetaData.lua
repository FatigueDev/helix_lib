---@meta

---@class TesselationMetaData
---@field TexSource ITexPositionSource
---@field GeneralGlowLevel number
---@field ClimateColorMapId number
---@field SeasonColorMapId number
---@field QuantityElements Nullable`1
---@field SelectiveElements string
---@field TexturesSizes table
---@field TypeForLogging string
---@field WithJointIds boolean
---@field WithDamageEffect boolean
---@field Rotation Vec3f
---@field GeneralWindMode number
---@field UsesColorMap boolean
---@field defaultTextureSize number
TesselationMetaData = {}

---@return TesselationMetaData
function TesselationMetaData.ctor() end

---@return TesselationMetaData
function TesselationMetaData.Clone() end

---@return userdata
function TesselationMetaData.GetType() end

---@return string
function TesselationMetaData.ToString() end

---@param obj userdata
---@return boolean
function TesselationMetaData.Equals(obj) end

---@return number
function TesselationMetaData.GetHashCode() end


