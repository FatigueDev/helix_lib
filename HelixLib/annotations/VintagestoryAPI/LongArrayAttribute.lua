---@meta

---@class LongArrayAttribute: ArrayAttribute`1, IAttribute
---@field AsUint number
---@field value number
LongArrayAttribute = {}

---@return LongArrayAttribute
function LongArrayAttribute.ctor() end
---@param value number
---@return LongArrayAttribute
function LongArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function LongArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function LongArrayAttribute.FromBytes(stream) end

---@return number
function LongArrayAttribute.get_AsUint() end

---@return number
function LongArrayAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function LongArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function LongArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function LongArrayAttribute.GetValue() end

---@return string
function LongArrayAttribute.ToJsonToken() end

---@return string
function LongArrayAttribute.ToString() end

---@return number
function LongArrayAttribute.GetHashCode() end

---@return userdata
function LongArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function LongArrayAttribute.Equals(obj) end


