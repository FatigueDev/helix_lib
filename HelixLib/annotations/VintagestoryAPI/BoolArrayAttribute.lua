---@meta

---@class BoolArrayAttribute: ArrayAttribute`1, IAttribute
---@field value boolean
BoolArrayAttribute = {}

---@return BoolArrayAttribute
function BoolArrayAttribute.ctor() end
---@param value boolean
---@return BoolArrayAttribute
function BoolArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function BoolArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function BoolArrayAttribute.FromBytes(stream) end

---@return number
function BoolArrayAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function BoolArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function BoolArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function BoolArrayAttribute.GetValue() end

---@return string
function BoolArrayAttribute.ToJsonToken() end

---@return string
function BoolArrayAttribute.ToString() end

---@return number
function BoolArrayAttribute.GetHashCode() end

---@return userdata
function BoolArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function BoolArrayAttribute.Equals(obj) end


