---@meta

---@class StringAttribute: ScalarAttribute`1, IAttribute
---@field value string
StringAttribute = {}

---@return StringAttribute
function StringAttribute.ctor() end
---@param value string
---@return StringAttribute
function StringAttribute.ctor(value) end

---@param stream BinaryWriter
function StringAttribute.ToBytes(stream) end

---@param stream BinaryReader
function StringAttribute.FromBytes(stream) end

---@return number
function StringAttribute.GetAttributeId() end

---@return string
function StringAttribute.ToJsonToken() end

---@return IAttribute # An attribute from an attribute tree
function StringAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function StringAttribute.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function StringAttribute.Equals(b) end

---@return userdata
function StringAttribute.GetValue() end

---@return string
function StringAttribute.ToString() end

---@return number
function StringAttribute.GetHashCode() end

---@return userdata
function StringAttribute.GetType() end


