---@meta

---@class Packet_IngameErrorSerializer
Packet_IngameErrorSerializer = {}

---@return Packet_IngameErrorSerializer
function Packet_IngameErrorSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_IngameError
function Packet_IngameErrorSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_IngameError
---@return Packet_IngameError
function Packet_IngameErrorSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IngameError
---@return Packet_IngameError
function Packet_IngameErrorSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IngameError
---@return Packet_IngameError
function Packet_IngameErrorSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_IngameError
function Packet_IngameErrorSerializer.Serialize(stream, instance) end

---@param instance Packet_IngameError
---@return number
function Packet_IngameErrorSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_IngameError
function Packet_IngameErrorSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_IngameErrorSerializer.GetType() end

---@return string
function Packet_IngameErrorSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_IngameErrorSerializer.Equals(obj) end

---@return number
function Packet_IngameErrorSerializer.GetHashCode() end


