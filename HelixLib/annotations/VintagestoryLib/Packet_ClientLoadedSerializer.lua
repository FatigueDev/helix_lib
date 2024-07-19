---@meta

---@class Packet_ClientLoadedSerializer
Packet_ClientLoadedSerializer = {}

---@return Packet_ClientLoadedSerializer
function Packet_ClientLoadedSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientLoaded
function Packet_ClientLoadedSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientLoaded
---@return Packet_ClientLoaded
function Packet_ClientLoadedSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientLoaded
---@return Packet_ClientLoaded
function Packet_ClientLoadedSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientLoaded
---@return Packet_ClientLoaded
function Packet_ClientLoadedSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientLoaded
function Packet_ClientLoadedSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientLoaded
---@return number
function Packet_ClientLoadedSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientLoaded
function Packet_ClientLoadedSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientLoadedSerializer.GetType() end

---@return string
function Packet_ClientLoadedSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientLoadedSerializer.Equals(obj) end

---@return number
function Packet_ClientLoadedSerializer.GetHashCode() end


