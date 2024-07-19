---@meta

---@class Packet_PlayerModeSerializer
Packet_PlayerModeSerializer = {}

---@return Packet_PlayerModeSerializer
function Packet_PlayerModeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerMode
function Packet_PlayerModeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerMode
---@return Packet_PlayerMode
function Packet_PlayerModeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerMode
---@return Packet_PlayerMode
function Packet_PlayerModeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerMode
---@return Packet_PlayerMode
function Packet_PlayerModeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerMode
function Packet_PlayerModeSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerMode
---@return number
function Packet_PlayerModeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerMode
function Packet_PlayerModeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerModeSerializer.GetType() end

---@return string
function Packet_PlayerModeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerModeSerializer.Equals(obj) end

---@return number
function Packet_PlayerModeSerializer.GetHashCode() end


