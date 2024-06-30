---@meta

---@class Packet_ActivateInventorySlotSerializer
Packet_ActivateInventorySlotSerializer = {}

---@return Packet_ActivateInventorySlotSerializer
function Packet_ActivateInventorySlotSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ActivateInventorySlot
---@return Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ActivateInventorySlot
---@return Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ActivateInventorySlot
---@return Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.Serialize(stream, instance) end

---@param instance Packet_ActivateInventorySlot
---@return number
function Packet_ActivateInventorySlotSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ActivateInventorySlot
function Packet_ActivateInventorySlotSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ActivateInventorySlotSerializer.GetType() end

---@return string
function Packet_ActivateInventorySlotSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ActivateInventorySlotSerializer.Equals(obj) end

---@return number
function Packet_ActivateInventorySlotSerializer.GetHashCode() end


