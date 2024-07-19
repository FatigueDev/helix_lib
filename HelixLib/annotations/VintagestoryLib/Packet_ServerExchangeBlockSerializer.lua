---@meta

---@class Packet_ServerExchangeBlockSerializer
Packet_ServerExchangeBlockSerializer = {}

---@return Packet_ServerExchangeBlockSerializer
function Packet_ServerExchangeBlockSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerExchangeBlock
---@return Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerExchangeBlock
---@return Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerExchangeBlock
---@return Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerExchangeBlock
---@return number
function Packet_ServerExchangeBlockSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerExchangeBlock
function Packet_ServerExchangeBlockSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerExchangeBlockSerializer.GetType() end

---@return string
function Packet_ServerExchangeBlockSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerExchangeBlockSerializer.Equals(obj) end

---@return number
function Packet_ServerExchangeBlockSerializer.GetHashCode() end


