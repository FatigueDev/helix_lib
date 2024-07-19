---@meta

---@class Packet_InventoryUpdateSerializer
Packet_InventoryUpdateSerializer = {}

---@return Packet_InventoryUpdateSerializer
function Packet_InventoryUpdateSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_InventoryUpdate
---@return Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryUpdate
---@return Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryUpdate
---@return Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.Serialize(stream, instance) end

---@param instance Packet_InventoryUpdate
---@return number
function Packet_InventoryUpdateSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_InventoryUpdate
function Packet_InventoryUpdateSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_InventoryUpdateSerializer.GetType() end

---@return string
function Packet_InventoryUpdateSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryUpdateSerializer.Equals(obj) end

---@return number
function Packet_InventoryUpdateSerializer.GetHashCode() end


