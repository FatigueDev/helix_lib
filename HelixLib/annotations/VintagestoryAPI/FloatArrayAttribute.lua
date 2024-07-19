---@meta

---@class FloatArrayAttribute: ArrayAttribute`1, IAttribute
---@field value number
FloatArrayAttribute = {}

---@return FloatArrayAttribute
function FloatArrayAttribute.ctor() end
---@param value number
---@return FloatArrayAttribute
function FloatArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function FloatArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function FloatArrayAttribute.FromBytes(stream) end

---@return number
function FloatArrayAttribute.GetAttributeId() end

---@return string
function FloatArrayAttribute.ToJsonToken() end

---@return IAttribute # An attribute from an attribute tree
function FloatArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function FloatArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function FloatArrayAttribute.GetValue() end

---@return string
function FloatArrayAttribute.ToString() end

---@return number
function FloatArrayAttribute.GetHashCode() end

---@return userdata
function FloatArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function FloatArrayAttribute.Equals(obj) end


