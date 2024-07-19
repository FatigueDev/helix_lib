---@meta

---@class Packet_EntityInteractionSerializer
Packet_EntityInteractionSerializer = {}

---@return Packet_EntityInteractionSerializer
function Packet_EntityInteractionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityInteraction
function Packet_EntityInteractionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityInteraction
---@return Packet_EntityInteraction
function Packet_EntityInteractionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityInteraction
---@return Packet_EntityInteraction
function Packet_EntityInteractionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityInteraction
---@return Packet_EntityInteraction
function Packet_EntityInteractionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityInteraction
function Packet_EntityInteractionSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityInteraction
---@return number
function Packet_EntityInteractionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityInteraction
function Packet_EntityInteractionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityInteractionSerializer.GetType() end

---@return string
function Packet_EntityInteractionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityInteractionSerializer.Equals(obj) end

---@return number
function Packet_EntityInteractionSerializer.GetHashCode() end


