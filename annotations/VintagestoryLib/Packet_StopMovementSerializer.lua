---@meta

---@class Packet_StopMovementSerializer
Packet_StopMovementSerializer = {}

---@return Packet_StopMovementSerializer
function Packet_StopMovementSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_StopMovement
function Packet_StopMovementSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_StopMovement
---@return Packet_StopMovement
function Packet_StopMovementSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_StopMovement
---@return Packet_StopMovement
function Packet_StopMovementSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_StopMovement
---@return Packet_StopMovement
function Packet_StopMovementSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_StopMovement
function Packet_StopMovementSerializer.Serialize(stream, instance) end

---@param instance Packet_StopMovement
---@return number
function Packet_StopMovementSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_StopMovement
function Packet_StopMovementSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_StopMovementSerializer.GetType() end

---@return string
function Packet_StopMovementSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_StopMovementSerializer.Equals(obj) end

---@return number
function Packet_StopMovementSerializer.GetHashCode() end


