---@meta

---@class Packet_BlendedOverlayTextureSerializer
Packet_BlendedOverlayTextureSerializer = {}

---@return Packet_BlendedOverlayTextureSerializer
function Packet_BlendedOverlayTextureSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlendedOverlayTexture
---@return Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlendedOverlayTexture
---@return Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlendedOverlayTexture
---@return Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.Serialize(stream, instance) end

---@param instance Packet_BlendedOverlayTexture
---@return number
function Packet_BlendedOverlayTextureSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTextureSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlendedOverlayTextureSerializer.GetType() end

---@return string
function Packet_BlendedOverlayTextureSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlendedOverlayTextureSerializer.Equals(obj) end

---@return number
function Packet_BlendedOverlayTextureSerializer.GetHashCode() end


