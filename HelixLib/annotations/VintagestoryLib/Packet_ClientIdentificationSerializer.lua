---@meta

---@class Packet_ClientIdentificationSerializer
Packet_ClientIdentificationSerializer = {}

---@return Packet_ClientIdentificationSerializer
function Packet_ClientIdentificationSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientIdentification
---@return Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientIdentification
---@return Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientIdentification
---@return Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientIdentification
---@return number
function Packet_ClientIdentificationSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientIdentification
function Packet_ClientIdentificationSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientIdentificationSerializer.GetType() end

---@return string
function Packet_ClientIdentificationSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientIdentificationSerializer.Equals(obj) end

---@return number
function Packet_ClientIdentificationSerializer.GetHashCode() end


