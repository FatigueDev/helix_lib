---@meta

---@class ByteArrayAttribute: ArrayAttribute`1, IAttribute
---@field value number
ByteArrayAttribute = {}

---@return ByteArrayAttribute
function ByteArrayAttribute.ctor() end
---@param value number
---@return ByteArrayAttribute
function ByteArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function ByteArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function ByteArrayAttribute.FromBytes(stream) end

---@return number
function ByteArrayAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function ByteArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function ByteArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function ByteArrayAttribute.GetValue() end

---@return string
function ByteArrayAttribute.ToJsonToken() end

---@return string
function ByteArrayAttribute.ToString() end

---@return number
function ByteArrayAttribute.GetHashCode() end

---@return userdata
function ByteArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function ByteArrayAttribute.Equals(obj) end


