---@meta

---@class Packet_ClientPlayingSerializer
Packet_ClientPlayingSerializer = {}

---@return Packet_ClientPlayingSerializer
function Packet_ClientPlayingSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientPlaying
function Packet_ClientPlayingSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientPlaying
---@return Packet_ClientPlaying
function Packet_ClientPlayingSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientPlaying
---@return Packet_ClientPlaying
function Packet_ClientPlayingSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientPlaying
---@return Packet_ClientPlaying
function Packet_ClientPlayingSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientPlaying
function Packet_ClientPlayingSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientPlaying
---@return number
function Packet_ClientPlayingSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientPlaying
function Packet_ClientPlayingSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientPlayingSerializer.GetType() end

---@return string
function Packet_ClientPlayingSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientPlayingSerializer.Equals(obj) end

---@return number
function Packet_ClientPlayingSerializer.GetHashCode() end


