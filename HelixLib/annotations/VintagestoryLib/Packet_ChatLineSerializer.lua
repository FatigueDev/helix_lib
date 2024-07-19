---@meta

---@class Packet_ChatLineSerializer
Packet_ChatLineSerializer = {}

---@return Packet_ChatLineSerializer
function Packet_ChatLineSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ChatLine
function Packet_ChatLineSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ChatLine
---@return Packet_ChatLine
function Packet_ChatLineSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ChatLine
---@return Packet_ChatLine
function Packet_ChatLineSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ChatLine
---@return Packet_ChatLine
function Packet_ChatLineSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ChatLine
function Packet_ChatLineSerializer.Serialize(stream, instance) end

---@param instance Packet_ChatLine
---@return number
function Packet_ChatLineSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ChatLine
function Packet_ChatLineSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ChatLineSerializer.GetType() end

---@return string
function Packet_ChatLineSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ChatLineSerializer.Equals(obj) end

---@return number
function Packet_ChatLineSerializer.GetHashCode() end


