---@meta

---@class Packet_ServerAssetsSerializer
Packet_ServerAssetsSerializer = {}

---@return Packet_ServerAssetsSerializer
function Packet_ServerAssetsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerAssets
function Packet_ServerAssetsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerAssets
---@return Packet_ServerAssets
function Packet_ServerAssetsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerAssets
---@return Packet_ServerAssets
function Packet_ServerAssetsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerAssets
---@return Packet_ServerAssets
function Packet_ServerAssetsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerAssets
function Packet_ServerAssetsSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerAssets
---@return number
function Packet_ServerAssetsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerAssets
function Packet_ServerAssetsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerAssetsSerializer.GetType() end

---@return string
function Packet_ServerAssetsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerAssetsSerializer.Equals(obj) end

---@return number
function Packet_ServerAssetsSerializer.GetHashCode() end


