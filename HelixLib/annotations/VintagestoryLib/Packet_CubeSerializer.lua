---@meta

---@class Packet_CubeSerializer
Packet_CubeSerializer = {}

---@return Packet_CubeSerializer
function Packet_CubeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Cube
function Packet_CubeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Cube
---@return Packet_Cube
function Packet_CubeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Cube
---@return Packet_Cube
function Packet_CubeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Cube
---@return Packet_Cube
function Packet_CubeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Cube
function Packet_CubeSerializer.Serialize(stream, instance) end

---@param instance Packet_Cube
---@return number
function Packet_CubeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Cube
function Packet_CubeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CubeSerializer.GetType() end

---@return string
function Packet_CubeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CubeSerializer.Equals(obj) end

---@return number
function Packet_CubeSerializer.GetHashCode() end


