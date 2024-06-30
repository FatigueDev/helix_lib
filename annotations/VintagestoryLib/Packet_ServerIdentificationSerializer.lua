---@meta

---@class Packet_ServerIdentificationSerializer
Packet_ServerIdentificationSerializer = {}

---@return Packet_ServerIdentificationSerializer
function Packet_ServerIdentificationSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerIdentification
---@return Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerIdentification
---@return Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerIdentification
---@return Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerIdentification
---@return number
function Packet_ServerIdentificationSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerIdentification
function Packet_ServerIdentificationSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerIdentificationSerializer.GetType() end

---@return string
function Packet_ServerIdentificationSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerIdentificationSerializer.Equals(obj) end

---@return number
function Packet_ServerIdentificationSerializer.GetHashCode() end


