---@meta

---@class Packet_AmbientSerializer
Packet_AmbientSerializer = {}

---@return Packet_AmbientSerializer
function Packet_AmbientSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Ambient
function Packet_AmbientSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Ambient
---@return Packet_Ambient
function Packet_AmbientSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Ambient
---@return Packet_Ambient
function Packet_AmbientSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Ambient
---@return Packet_Ambient
function Packet_AmbientSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Ambient
function Packet_AmbientSerializer.Serialize(stream, instance) end

---@param instance Packet_Ambient
---@return number
function Packet_AmbientSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Ambient
function Packet_AmbientSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_AmbientSerializer.GetType() end

---@return string
function Packet_AmbientSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_AmbientSerializer.Equals(obj) end

---@return number
function Packet_AmbientSerializer.GetHashCode() end


