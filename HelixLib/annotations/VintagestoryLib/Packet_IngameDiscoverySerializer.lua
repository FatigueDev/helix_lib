---@meta

---@class Packet_IngameDiscoverySerializer
Packet_IngameDiscoverySerializer = {}

---@return Packet_IngameDiscoverySerializer
function Packet_IngameDiscoverySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_IngameDiscovery
---@return Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IngameDiscovery
---@return Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IngameDiscovery
---@return Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.Serialize(stream, instance) end

---@param instance Packet_IngameDiscovery
---@return number
function Packet_IngameDiscoverySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_IngameDiscovery
function Packet_IngameDiscoverySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_IngameDiscoverySerializer.GetType() end

---@return string
function Packet_IngameDiscoverySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_IngameDiscoverySerializer.Equals(obj) end

---@return number
function Packet_IngameDiscoverySerializer.GetHashCode() end


