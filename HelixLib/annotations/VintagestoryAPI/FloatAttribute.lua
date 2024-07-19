---@meta

---@class FloatAttribute: ScalarAttribute`1, IAttribute
---@field value number
FloatAttribute = {}

---@return FloatAttribute
function FloatAttribute.ctor() end
---@param value number
---@return FloatAttribute
function FloatAttribute.ctor(value) end

---@param stream BinaryReader
function FloatAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function FloatAttribute.ToBytes(stream) end

---@return number
function FloatAttribute.GetAttributeId() end

---@return string
function FloatAttribute.ToJsonToken() end

---@return string
function FloatAttribute.ToString() end

---@return IAttribute # An attribute from an attribute tree
function FloatAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function FloatAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function FloatAttribute.Equals(b) end

---@return userdata
function FloatAttribute.GetValue() end

---@return number
function FloatAttribute.GetHashCode() end

---@return userdata
function FloatAttribute.GetType() end


