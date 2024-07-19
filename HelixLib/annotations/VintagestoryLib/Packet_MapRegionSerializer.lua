---@meta

---@class Packet_MapRegionSerializer
Packet_MapRegionSerializer = {}

---@return Packet_MapRegionSerializer
function Packet_MapRegionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_MapRegion
function Packet_MapRegionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_MapRegion
---@return Packet_MapRegion
function Packet_MapRegionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MapRegion
---@return Packet_MapRegion
function Packet_MapRegionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MapRegion
---@return Packet_MapRegion
function Packet_MapRegionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_MapRegion
function Packet_MapRegionSerializer.Serialize(stream, instance) end

---@param instance Packet_MapRegion
---@return number
function Packet_MapRegionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_MapRegion
function Packet_MapRegionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_MapRegionSerializer.GetType() end

---@return string
function Packet_MapRegionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_MapRegionSerializer.Equals(obj) end

---@return number
function Packet_MapRegionSerializer.GetHashCode() end


