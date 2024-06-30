---@meta

---@class Packet_ClientHandInteractionSerializer
Packet_ClientHandInteractionSerializer = {}

---@return Packet_ClientHandInteractionSerializer
function Packet_ClientHandInteractionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientHandInteraction
---@return Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientHandInteraction
---@return Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientHandInteraction
---@return Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientHandInteraction
---@return number
function Packet_ClientHandInteractionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientHandInteraction
function Packet_ClientHandInteractionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientHandInteractionSerializer.GetType() end

---@return string
function Packet_ClientHandInteractionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientHandInteractionSerializer.Equals(obj) end

---@return number
function Packet_ClientHandInteractionSerializer.GetHashCode() end


