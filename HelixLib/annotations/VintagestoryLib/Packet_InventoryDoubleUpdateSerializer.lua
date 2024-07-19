---@meta

---@class Packet_InventoryDoubleUpdateSerializer
Packet_InventoryDoubleUpdateSerializer = {}

---@return Packet_InventoryDoubleUpdateSerializer
function Packet_InventoryDoubleUpdateSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_InventoryDoubleUpdate
---@return Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryDoubleUpdate
---@return Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InventoryDoubleUpdate
---@return Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.Serialize(stream, instance) end

---@param instance Packet_InventoryDoubleUpdate
---@return number
function Packet_InventoryDoubleUpdateSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_InventoryDoubleUpdate
function Packet_InventoryDoubleUpdateSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_InventoryDoubleUpdateSerializer.GetType() end

---@return string
function Packet_InventoryDoubleUpdateSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryDoubleUpdateSerializer.Equals(obj) end

---@return number
function Packet_InventoryDoubleUpdateSerializer.GetHashCode() end


