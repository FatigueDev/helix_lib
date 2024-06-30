---@meta

---@class WeightedFloat: WeightedValue`1
---@field Value number
---@field Weight number
WeightedFloat = {}

---@return WeightedFloat
function WeightedFloat.ctor() end
---@param value number
---@param weight number
---@return WeightedFloat
function WeightedFloat.ctor(value, weight) end

---@param value number
---@param weight number
---@return WeightedFloat
function WeightedFloat.New(value, weight) end

---@param writer BinaryWriter
function WeightedFloat.ToBytes(writer) end

---@param reader BinaryReader
function WeightedFloat.FromBytes(reader) end

---@return WeightedFloat
function WeightedFloat.Clone() end

---@param left WeightedFloat
---@param right WeightedFloat
---@param w number
function WeightedFloat.SetLerped(left, right, w) end

---@param value number
---@param weight? number
function WeightedFloat.Set(value, weight) end

---@return userdata
function WeightedFloat.GetType() end

---@return string
function WeightedFloat.ToString() end

---@param obj userdata
---@return boolean
function WeightedFloat.Equals(obj) end

---@return number
function WeightedFloat.GetHashCode() end


