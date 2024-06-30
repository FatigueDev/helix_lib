---@meta

---@class Packet_SelectedHotbarSlotSerializer
Packet_SelectedHotbarSlotSerializer = {}

---@return Packet_SelectedHotbarSlotSerializer
function Packet_SelectedHotbarSlotSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_SelectedHotbarSlot
---@return Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_SelectedHotbarSlot
---@return Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_SelectedHotbarSlot
---@return Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.Serialize(stream, instance) end

---@param instance Packet_SelectedHotbarSlot
---@return number
function Packet_SelectedHotbarSlotSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlotSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_SelectedHotbarSlotSerializer.GetType() end

---@return string
function Packet_SelectedHotbarSlotSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_SelectedHotbarSlotSerializer.Equals(obj) end

---@return number
function Packet_SelectedHotbarSlotSerializer.GetHashCode() end


