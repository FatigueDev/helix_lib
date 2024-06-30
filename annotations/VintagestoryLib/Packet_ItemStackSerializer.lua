---@meta

---@class Packet_ItemStackSerializer
Packet_ItemStackSerializer = {}

---@return Packet_ItemStackSerializer
function Packet_ItemStackSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ItemStack
function Packet_ItemStackSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ItemStack
---@return Packet_ItemStack
function Packet_ItemStackSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ItemStack
---@return Packet_ItemStack
function Packet_ItemStackSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ItemStack
---@return Packet_ItemStack
function Packet_ItemStackSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ItemStack
function Packet_ItemStackSerializer.Serialize(stream, instance) end

---@param instance Packet_ItemStack
---@return number
function Packet_ItemStackSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ItemStack
function Packet_ItemStackSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ItemStackSerializer.GetType() end

---@return string
function Packet_ItemStackSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ItemStackSerializer.Equals(obj) end

---@return number
function Packet_ItemStackSerializer.GetHashCode() end


