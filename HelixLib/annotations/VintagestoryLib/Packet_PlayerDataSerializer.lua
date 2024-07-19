---@meta

---@class Packet_PlayerDataSerializer
Packet_PlayerDataSerializer = {}

---@return Packet_PlayerDataSerializer
function Packet_PlayerDataSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerData
function Packet_PlayerDataSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerData
---@return Packet_PlayerData
function Packet_PlayerDataSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerData
---@return Packet_PlayerData
function Packet_PlayerDataSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerData
---@return Packet_PlayerData
function Packet_PlayerDataSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerData
function Packet_PlayerDataSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerData
---@return number
function Packet_PlayerDataSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerData
function Packet_PlayerDataSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerDataSerializer.GetType() end

---@return string
function Packet_PlayerDataSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerDataSerializer.Equals(obj) end

---@return number
function Packet_PlayerDataSerializer.GetHashCode() end


