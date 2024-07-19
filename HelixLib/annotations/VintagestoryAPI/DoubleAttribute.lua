---@meta

---@class DoubleAttribute: ScalarAttribute`1, IAttribute
---@field value number
DoubleAttribute = {}

---@return DoubleAttribute
function DoubleAttribute.ctor() end
---@param value number
---@return DoubleAttribute
function DoubleAttribute.ctor(value) end

---@param stream BinaryReader
function DoubleAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function DoubleAttribute.ToBytes(stream) end

---@return number
function DoubleAttribute.GetAttributeId() end

---@return string
function DoubleAttribute.ToJsonToken() end

---@return string
function DoubleAttribute.ToString() end

---@return IAttribute # An attribute from an attribute tree
function DoubleAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function DoubleAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function DoubleAttribute.Equals(b) end

---@return userdata
function DoubleAttribute.GetValue() end

---@return number
function DoubleAttribute.GetHashCode() end

---@return userdata
function DoubleAttribute.GetType() end


