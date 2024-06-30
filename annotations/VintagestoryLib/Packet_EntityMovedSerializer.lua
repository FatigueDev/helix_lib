---@meta

---@class Packet_EntityMovedSerializer
Packet_EntityMovedSerializer = {}

---@return Packet_EntityMovedSerializer
function Packet_EntityMovedSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityMoved
function Packet_EntityMovedSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityMoved
---@return Packet_EntityMoved
function Packet_EntityMovedSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityMoved
---@return Packet_EntityMoved
function Packet_EntityMovedSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityMoved
---@return Packet_EntityMoved
function Packet_EntityMovedSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityMoved
function Packet_EntityMovedSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityMoved
---@return number
function Packet_EntityMovedSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityMoved
function Packet_EntityMovedSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityMovedSerializer.GetType() end

---@return string
function Packet_EntityMovedSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityMovedSerializer.Equals(obj) end

---@return number
function Packet_EntityMovedSerializer.GetHashCode() end


