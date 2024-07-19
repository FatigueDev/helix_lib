---@meta

---@class ItemstackAttribute:  IAttribute
---@field value ItemStack
ItemstackAttribute = {}

---@return ItemstackAttribute
function ItemstackAttribute.ctor() end
---@param value ItemStack
---@return ItemstackAttribute
function ItemstackAttribute.ctor(value) end

---@return number
function ItemstackAttribute.GetAttributeId() end

---@return userdata
function ItemstackAttribute.GetValue() end

---@param stream BinaryReader
function ItemstackAttribute.FromBytes(stream) end

---@param stream BinaryWriter
function ItemstackAttribute.ToBytes(stream) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function ItemstackAttribute.Equals(worldForResolve, attr) end

---@return string
function ItemstackAttribute.ToJsonToken() end

---@return number
function ItemstackAttribute.GetHashCode() end

---@return IAttribute # An attribute from an attribute tree
function ItemstackAttribute.Clone() end

---@return userdata
function ItemstackAttribute.GetType() end

---@return string
function ItemstackAttribute.ToString() end

---@param obj userdata
---@return boolean
function ItemstackAttribute.Equals(obj) end


