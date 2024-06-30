---@meta

---@class Packet_ClientRequestJoinSerializer
Packet_ClientRequestJoinSerializer = {}

---@return Packet_ClientRequestJoinSerializer
function Packet_ClientRequestJoinSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientRequestJoin
---@return Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientRequestJoin
---@return Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientRequestJoin
---@return Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientRequestJoin
---@return number
function Packet_ClientRequestJoinSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientRequestJoin
function Packet_ClientRequestJoinSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientRequestJoinSerializer.GetType() end

---@return string
function Packet_ClientRequestJoinSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientRequestJoinSerializer.Equals(obj) end

---@return number
function Packet_ClientRequestJoinSerializer.GetHashCode() end


