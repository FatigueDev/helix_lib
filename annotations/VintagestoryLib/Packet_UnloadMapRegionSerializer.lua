---@meta

---@class Packet_UnloadMapRegionSerializer
Packet_UnloadMapRegionSerializer = {}

---@return Packet_UnloadMapRegionSerializer
function Packet_UnloadMapRegionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_UnloadMapRegion
---@return Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_UnloadMapRegion
---@return Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_UnloadMapRegion
---@return Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.Serialize(stream, instance) end

---@param instance Packet_UnloadMapRegion
---@return number
function Packet_UnloadMapRegionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_UnloadMapRegion
function Packet_UnloadMapRegionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_UnloadMapRegionSerializer.GetType() end

---@return string
function Packet_UnloadMapRegionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_UnloadMapRegionSerializer.Equals(obj) end

---@return number
function Packet_UnloadMapRegionSerializer.GetHashCode() end


