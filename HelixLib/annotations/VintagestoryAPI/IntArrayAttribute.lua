---@meta

---@class IntArrayAttribute: ArrayAttribute`1, IAttribute
---@field AsUShort number
---@field AsUint number
---@field value number
IntArrayAttribute = {}

---@return IntArrayAttribute
function IntArrayAttribute.ctor() end
---@param value number
---@return IntArrayAttribute
function IntArrayAttribute.ctor(value) end
---@param value number
---@return IntArrayAttribute
function IntArrayAttribute.ctor(value) end
---@param value number
---@return IntArrayAttribute
function IntArrayAttribute.ctor(value) end

---@return number
function IntArrayAttribute.get_AsUShort() end

---@return number
function IntArrayAttribute.get_AsUint() end

---@param stream BinaryWriter
function IntArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function IntArrayAttribute.FromBytes(stream) end

---@return number
function IntArrayAttribute.GetAttributeId() end

---@param val number
function IntArrayAttribute.AddInt(val) end

---@param val number
function IntArrayAttribute.RemoveInt(val) end

---@return IAttribute # An attribute from an attribute tree
function IntArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function IntArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function IntArrayAttribute.GetValue() end

---@return string
function IntArrayAttribute.ToJsonToken() end

---@return string
function IntArrayAttribute.ToString() end

---@return number
function IntArrayAttribute.GetHashCode() end

---@return userdata
function IntArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function IntArrayAttribute.Equals(obj) end


