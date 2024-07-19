---@meta

---@class Packet_ClientLeaveSerializer
Packet_ClientLeaveSerializer = {}

---@return Packet_ClientLeaveSerializer
function Packet_ClientLeaveSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientLeave
function Packet_ClientLeaveSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientLeave
---@return Packet_ClientLeave
function Packet_ClientLeaveSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientLeave
---@return Packet_ClientLeave
function Packet_ClientLeaveSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientLeave
---@return Packet_ClientLeave
function Packet_ClientLeaveSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientLeave
function Packet_ClientLeaveSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientLeave
---@return number
function Packet_ClientLeaveSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientLeave
function Packet_ClientLeaveSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientLeaveSerializer.GetType() end

---@return string
function Packet_ClientLeaveSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientLeaveSerializer.Equals(obj) end

---@return number
function Packet_ClientLeaveSerializer.GetHashCode() end


