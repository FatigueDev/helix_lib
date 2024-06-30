---@meta

---@class StringArrayAttribute: ArrayAttribute`1, IAttribute
---@field value string
StringArrayAttribute = {}

---@return StringArrayAttribute
function StringArrayAttribute.ctor() end
---@param value string
---@return StringArrayAttribute
function StringArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function StringArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function StringArrayAttribute.FromBytes(stream) end

---@return number
function StringArrayAttribute.GetAttributeId() end

---@return string
function StringArrayAttribute.ToJsonToken() end

---@return IAttribute # An attribute from an attribute tree
function StringArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function StringArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function StringArrayAttribute.GetValue() end

---@return string
function StringArrayAttribute.ToString() end

---@return number
function StringArrayAttribute.GetHashCode() end

---@return userdata
function StringArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function StringArrayAttribute.Equals(obj) end


