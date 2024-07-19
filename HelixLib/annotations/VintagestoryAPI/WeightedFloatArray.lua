---@meta

---@class WeightedFloatArray: WeightedValue`1
---@field Value number
---@field Weight number
WeightedFloatArray = {}

---@return WeightedFloatArray
function WeightedFloatArray.ctor() end
---@param value number
---@param weight number
---@return WeightedFloatArray
function WeightedFloatArray.ctor(value, weight) end

---@param value number
---@param weight number
---@return WeightedFloatArray
function WeightedFloatArray.New(value, weight) end

---@return WeightedFloatArray
function WeightedFloatArray.Clone() end

---@param writer BinaryWriter
function WeightedFloatArray.ToBytes(writer) end

---@param reader BinaryReader
function WeightedFloatArray.FromBytes(reader) end

---@param left WeightedFloatArray
---@param right WeightedFloatArray
---@param w number
function WeightedFloatArray.SetLerped(left, right, w) end

---@param value number
---@param weight? number
function WeightedFloatArray.Set(value, weight) end

---@return userdata
function WeightedFloatArray.GetType() end

---@return string
function WeightedFloatArray.ToString() end

---@param obj userdata
---@return boolean
function WeightedFloatArray.Equals(obj) end

---@return number
function WeightedFloatArray.GetHashCode() end


