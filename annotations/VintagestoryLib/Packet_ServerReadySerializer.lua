---@meta

---@class Packet_ServerReadySerializer
Packet_ServerReadySerializer = {}

---@return Packet_ServerReadySerializer
function Packet_ServerReadySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerReady
function Packet_ServerReadySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerReady
---@return Packet_ServerReady
function Packet_ServerReadySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerReady
---@return Packet_ServerReady
function Packet_ServerReadySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerReady
---@return Packet_ServerReady
function Packet_ServerReadySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerReady
function Packet_ServerReadySerializer.Serialize(stream, instance) end

---@param instance Packet_ServerReady
---@return number
function Packet_ServerReadySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerReady
function Packet_ServerReadySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerReadySerializer.GetType() end

---@return string
function Packet_ServerReadySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerReadySerializer.Equals(obj) end

---@return number
function Packet_ServerReadySerializer.GetHashCode() end


