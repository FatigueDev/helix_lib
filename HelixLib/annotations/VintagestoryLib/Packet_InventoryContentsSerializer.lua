---@meta

---@class Packet_InventoryContentsSerializer
Packet_InventoryContentsSerializer = {}

---@return Packet_InventoryContentsSerializer
function Packet_InventoryContentsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_InventoryContents
function Packet_InventoryContentsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_InventoryContents
---@return Packet_InventoryContents
function Packet_InventoryContentsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryContents
---@return Packet_InventoryContents
function Packet_InventoryContentsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryContents
---@return Packet_InventoryContents
function Packet_InventoryContentsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_InventoryContents
function Packet_InventoryContentsSerializer.Serialize(stream, instance) end

---@param instance Packet_InventoryContents
---@return number
function Packet_InventoryContentsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_InventoryContents
function Packet_InventoryContentsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_InventoryContentsSerializer.GetType() end

---@return string
function Packet_InventoryContentsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryContentsSerializer.Equals(obj) end

---@return number
function Packet_InventoryContentsSerializer.GetHashCode() end


