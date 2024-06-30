---@meta

---@class Packet_ClientSerializer
Packet_ClientSerializer = {}

---@return Packet_ClientSerializer
function Packet_ClientSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Client
function Packet_ClientSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Client
---@return Packet_Client
function Packet_ClientSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Client
---@return Packet_Client
function Packet_ClientSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Client
---@return Packet_Client
function Packet_ClientSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Client
function Packet_ClientSerializer.Serialize(stream, instance) end

---@param instance Packet_Client
---@return number
function Packet_ClientSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Client
function Packet_ClientSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientSerializer.GetType() end

---@return string
function Packet_ClientSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientSerializer.Equals(obj) end

---@return number
function Packet_ClientSerializer.GetHashCode() end


