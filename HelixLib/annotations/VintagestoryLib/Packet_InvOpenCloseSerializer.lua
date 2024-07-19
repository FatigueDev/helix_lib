---@meta

---@class Packet_InvOpenCloseSerializer
Packet_InvOpenCloseSerializer = {}

---@return Packet_InvOpenCloseSerializer
function Packet_InvOpenCloseSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_InvOpenClose
---@return Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InvOpenClose
---@return Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_InvOpenClose
---@return Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.Serialize(stream, instance) end

---@param instance Packet_InvOpenClose
---@return number
function Packet_InvOpenCloseSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_InvOpenClose
function Packet_InvOpenCloseSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_InvOpenCloseSerializer.GetType() end

---@return string
function Packet_InvOpenCloseSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_InvOpenCloseSerializer.Equals(obj) end

---@return number
function Packet_InvOpenCloseSerializer.GetHashCode() end


