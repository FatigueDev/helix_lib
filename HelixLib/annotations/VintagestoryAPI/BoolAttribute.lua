---@meta

---@class BoolAttribute: ScalarAttribute`1, IAttribute
---@field value boolean
BoolAttribute = {}

---@return BoolAttribute
function BoolAttribute.ctor() end
---@param value boolean
---@return BoolAttribute
function BoolAttribute.ctor(value) end

---@param stream BinaryReader
function BoolAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function BoolAttribute.ToBytes(stream) end

---@return number
function BoolAttribute.GetAttributeId() end

---@return string
function BoolAttribute.ToJsonToken() end

---@return IAttribute # An attribute from an attribute tree
function BoolAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function BoolAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function BoolAttribute.Equals(b) end

---@return userdata
function BoolAttribute.GetValue() end

---@return string
function BoolAttribute.ToString() end

---@return number
function BoolAttribute.GetHashCode() end

---@return userdata
function BoolAttribute.GetType() end


