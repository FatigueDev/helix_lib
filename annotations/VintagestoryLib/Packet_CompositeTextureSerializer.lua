---@meta

---@class Packet_CompositeTextureSerializer
Packet_CompositeTextureSerializer = {}

---@return Packet_CompositeTextureSerializer
function Packet_CompositeTextureSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CompositeTexture
function Packet_CompositeTextureSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CompositeTexture
---@return Packet_CompositeTexture
function Packet_CompositeTextureSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CompositeTexture
---@return Packet_CompositeTexture
function Packet_CompositeTextureSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CompositeTexture
---@return Packet_CompositeTexture
function Packet_CompositeTextureSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CompositeTexture
function Packet_CompositeTextureSerializer.Serialize(stream, instance) end

---@param instance Packet_CompositeTexture
---@return number
function Packet_CompositeTextureSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CompositeTexture
function Packet_CompositeTextureSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CompositeTextureSerializer.GetType() end

---@return string
function Packet_CompositeTextureSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CompositeTextureSerializer.Equals(obj) end

---@return number
function Packet_CompositeTextureSerializer.GetHashCode() end


