---@meta

-- A number generator whose return value changes over time, parametrized by a transform function and some constants
---@class EvolvingNatFloat
---@field Factor number
---@field MaxValue Nullable`1
---@field Transform EnumTransformFunction
EvolvingNatFloat = {}

---@return EvolvingNatFloat
function EvolvingNatFloat.ctor() end
---@param transform EnumTransformFunction Used for EvolvingNatFloat value transforms
---@param factor number
---@return EvolvingNatFloat
function EvolvingNatFloat.ctor(transform, factor) end

---@return number
function EvolvingNatFloat.get_Factor() end

---@return Nullable`1
function EvolvingNatFloat.get_MaxValue() end

---@return EnumTransformFunction # Used for EvolvingNatFloat value transforms
function EvolvingNatFloat.get_Transform() end

---@param factor number
---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EvolvingNatFloat.createIdentical(factor) end

---@param function EnumTransformFunction Used for EvolvingNatFloat value transforms
---@param factor number
---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EvolvingNatFloat.create(function, factor) end

-- The sequence should always run from 0 to n
---@param firstvalue number
---@param sequence number
---@return number
function EvolvingNatFloat.nextFloat(firstvalue, sequence) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EvolvingNatFloat.Clone() end

---@param reader BinaryReader
function EvolvingNatFloat.FromBytes(reader) end

---@param writer BinaryWriter
function EvolvingNatFloat.ToBytes(writer) end

---@param reader BinaryReader
---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EvolvingNatFloat.CreateFromBytes(reader) end

---@return userdata
function EvolvingNatFloat.GetType() end

---@return string
function EvolvingNatFloat.ToString() end

---@param obj userdata
---@return boolean
function EvolvingNatFloat.Equals(obj) end

---@return number
function EvolvingNatFloat.GetHashCode() end


