---@meta

---@class Packet_ClientServerQuerySerializer
Packet_ClientServerQuerySerializer = {}

---@return Packet_ClientServerQuerySerializer
function Packet_ClientServerQuerySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientServerQuery
---@return Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientServerQuery
---@return Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientServerQuery
---@return Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.Serialize(stream, instance) end

---@param instance Packet_ClientServerQuery
---@return number
function Packet_ClientServerQuerySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientServerQuery
function Packet_ClientServerQuerySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientServerQuerySerializer.GetType() end

---@return string
function Packet_ClientServerQuerySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientServerQuerySerializer.Equals(obj) end

---@return number
function Packet_ClientServerQuerySerializer.GetHashCode() end


