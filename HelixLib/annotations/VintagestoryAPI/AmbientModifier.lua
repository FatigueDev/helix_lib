---@meta

---@class AmbientModifier
---@field DefaultAmbient AmbientModifier
---@field FlatFogDensity WeightedFloat
---@field FlatFogYPos WeightedFloat
---@field FogMin WeightedFloat
---@field FogDensity WeightedFloat
---@field FogColor WeightedFloatArray
---@field AmbientColor WeightedFloatArray
---@field CloudDensity WeightedFloat
---@field CloudBrightness WeightedFloat
---@field LerpSpeed WeightedFloat
---@field SceneBrightness WeightedFloat
---@field FogBrightness WeightedFloat
AmbientModifier = {}

---@return AmbientModifier
function AmbientModifier.ctor() end

---@param left AmbientModifier
---@param right AmbientModifier
---@param w number
function AmbientModifier.SetLerped(left, right, w) end

---@return AmbientModifier
function AmbientModifier.Clone() end

---@return AmbientModifier
function AmbientModifier.get_DefaultAmbient() end

---@return AmbientModifier
function AmbientModifier.EnsurePopulated() end

---@param writer BinaryWriter
function AmbientModifier.ToBytes(writer) end

---@param reader BinaryReader
function AmbientModifier.FromBytes(reader) end

---@return userdata
function AmbientModifier.GetType() end

---@return string
function AmbientModifier.ToString() end

---@param obj userdata
---@return boolean
function AmbientModifier.Equals(obj) end

---@return number
function AmbientModifier.GetHashCode() end


