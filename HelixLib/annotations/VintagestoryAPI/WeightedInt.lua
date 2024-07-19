---@meta

---@class WeightedInt: WeightedValue`1
---@field Value number
---@field Weight number
WeightedInt = {}

---@return WeightedInt
function WeightedInt.ctor() end
---@param value number
---@param weight number
---@return WeightedInt
function WeightedInt.ctor(value, weight) end

---@param value number
---@param weight number
---@return WeightedInt
function WeightedInt.New(value, weight) end

---@param writer BinaryWriter
function WeightedInt.ToBytes(writer) end

---@param reader BinaryReader
function WeightedInt.FromBytes(reader) end

---@param value number
---@param weight? number
function WeightedInt.Set(value, weight) end

---@return userdata
function WeightedInt.GetType() end

---@return string
function WeightedInt.ToString() end

---@param obj userdata
---@return boolean
function WeightedInt.Equals(obj) end

---@return number
function WeightedInt.GetHashCode() end


