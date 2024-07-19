---@meta

---@class DoubleArrayAttribute: ArrayAttribute`1, IAttribute
---@field value number
DoubleArrayAttribute = {}

---@return DoubleArrayAttribute
function DoubleArrayAttribute.ctor() end
---@param value number
---@return DoubleArrayAttribute
function DoubleArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function DoubleArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function DoubleArrayAttribute.FromBytes(stream) end

---@return number
function DoubleArrayAttribute.GetAttributeId() end

---@return string
function DoubleArrayAttribute.ToJsonToken() end

---@return IAttribute # An attribute from an attribute tree
function DoubleArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function DoubleArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function DoubleArrayAttribute.GetValue() end

---@return string
function DoubleArrayAttribute.ToString() end

---@return number
function DoubleArrayAttribute.GetHashCode() end

---@return userdata
function DoubleArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function DoubleArrayAttribute.Equals(obj) end


