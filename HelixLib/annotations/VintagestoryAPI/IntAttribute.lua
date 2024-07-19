---@meta

---@class IntAttribute: ScalarAttribute`1, IAttribute
---@field value number
IntAttribute = {}

---@return IntAttribute
function IntAttribute.ctor() end
---@param value number
---@return IntAttribute
function IntAttribute.ctor(value) end

---@param stream BinaryReader
function IntAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function IntAttribute.ToBytes(stream) end

---@return number
function IntAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function IntAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function IntAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function IntAttribute.Equals(b) end

---@return userdata
function IntAttribute.GetValue() end

---@return string
function IntAttribute.ToString() end

---@return string
function IntAttribute.ToJsonToken() end

---@return number
function IntAttribute.GetHashCode() end

---@return userdata
function IntAttribute.GetType() end


