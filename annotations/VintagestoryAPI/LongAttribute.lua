---@meta

---@class LongAttribute: ScalarAttribute`1, IAttribute
---@field value number
LongAttribute = {}

---@return LongAttribute
function LongAttribute.ctor() end
---@param value number
---@return LongAttribute
function LongAttribute.ctor(value) end

---@param stream BinaryReader
function LongAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function LongAttribute.ToBytes(stream) end

---@return number
function LongAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function LongAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function LongAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function LongAttribute.Equals(b) end

---@return userdata
function LongAttribute.GetValue() end

---@return string
function LongAttribute.ToString() end

---@return string
function LongAttribute.ToJsonToken() end

---@return number
function LongAttribute.GetHashCode() end

---@return userdata
function LongAttribute.GetType() end


