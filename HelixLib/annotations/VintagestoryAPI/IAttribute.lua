---@meta

-- An attribute from an attribute tree
---@class IAttribute
IAttribute = {}


---@param stream BinaryWriter
function IAttribute.ToBytes(stream) end

---@param stream BinaryReader
function IAttribute.FromBytes(stream) end

---@return number
function IAttribute.GetAttributeId() end

---@return userdata
function IAttribute.GetType() end

---@return userdata
function IAttribute.GetValue() end

---@return string
function IAttribute.ToJsonToken() end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function IAttribute.Equals(worldForResolve, attr) end

---@return IAttribute # An attribute from an attribute tree
function IAttribute.Clone() end


