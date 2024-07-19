---@meta

---@class TreeArrayAttribute: ArrayAttribute`1, IAttribute
---@field value TreeAttribute[]
TreeArrayAttribute = {}

---@return TreeArrayAttribute
function TreeArrayAttribute.ctor() end
---@param value TreeAttribute[] A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return TreeArrayAttribute
function TreeArrayAttribute.ctor(value) end

---@param stream BinaryWriter
function TreeArrayAttribute.ToBytes(stream) end

---@param stream BinaryReader
function TreeArrayAttribute.FromBytes(stream) end

---@return number
function TreeArrayAttribute.GetAttributeId() end

---@return IAttribute # An attribute from an attribute tree
function TreeArrayAttribute.Clone() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function TreeArrayAttribute.Equals(worldForResolve, attr) end

---@return userdata
function TreeArrayAttribute.GetValue() end

---@return string
function TreeArrayAttribute.ToJsonToken() end

---@return string
function TreeArrayAttribute.ToString() end

---@return number
function TreeArrayAttribute.GetHashCode() end

---@return userdata
function TreeArrayAttribute.GetType() end

---@param obj userdata
---@return boolean
function TreeArrayAttribute.Equals(obj) end


