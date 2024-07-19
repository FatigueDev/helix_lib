---@meta

---@class Packet_LoginTokenQuerySerializer
Packet_LoginTokenQuerySerializer = {}

---@return Packet_LoginTokenQuerySerializer
function Packet_LoginTokenQuerySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_LoginTokenQuery
---@return Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LoginTokenQuery
---@return Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LoginTokenQuery
---@return Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.Serialize(stream, instance) end

---@param instance Packet_LoginTokenQuery
---@return number
function Packet_LoginTokenQuerySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_LoginTokenQuery
function Packet_LoginTokenQuerySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_LoginTokenQuerySerializer.GetType() end

---@return string
function Packet_LoginTokenQuerySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_LoginTokenQuerySerializer.Equals(obj) end

---@return number
function Packet_LoginTokenQuerySerializer.GetHashCode() end


