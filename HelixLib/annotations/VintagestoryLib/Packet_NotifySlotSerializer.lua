---@meta

---@class Packet_NotifySlotSerializer
Packet_NotifySlotSerializer = {}

---@return Packet_NotifySlotSerializer
function Packet_NotifySlotSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_NotifySlot
function Packet_NotifySlotSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_NotifySlot
---@return Packet_NotifySlot
function Packet_NotifySlotSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NotifySlot
---@return Packet_NotifySlot
function Packet_NotifySlotSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NotifySlot
---@return Packet_NotifySlot
function Packet_NotifySlotSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_NotifySlot
function Packet_NotifySlotSerializer.Serialize(stream, instance) end

---@param instance Packet_NotifySlot
---@return number
function Packet_NotifySlotSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_NotifySlot
function Packet_NotifySlotSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_NotifySlotSerializer.GetType() end

---@return string
function Packet_NotifySlotSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_NotifySlotSerializer.Equals(obj) end

---@return number
function Packet_NotifySlotSerializer.GetHashCode() end


