---@meta

---@class Packet_ServerLevelInitializeSerializer
Packet_ServerLevelInitializeSerializer = {}

---@return Packet_ServerLevelInitializeSerializer
function Packet_ServerLevelInitializeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerLevelInitialize
---@return Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelInitialize
---@return Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelInitialize
---@return Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerLevelInitialize
---@return number
function Packet_ServerLevelInitializeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelInitialize
function Packet_ServerLevelInitializeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerLevelInitializeSerializer.GetType() end

---@return string
function Packet_ServerLevelInitializeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerLevelInitializeSerializer.Equals(obj) end

---@return number
function Packet_ServerLevelInitializeSerializer.GetHashCode() end


