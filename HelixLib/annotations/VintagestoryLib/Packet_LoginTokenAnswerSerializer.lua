---@meta

---@class Packet_LoginTokenAnswerSerializer
Packet_LoginTokenAnswerSerializer = {}

---@return Packet_LoginTokenAnswerSerializer
function Packet_LoginTokenAnswerSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_LoginTokenAnswer
---@return Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LoginTokenAnswer
---@return Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LoginTokenAnswer
---@return Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.Serialize(stream, instance) end

---@param instance Packet_LoginTokenAnswer
---@return number
function Packet_LoginTokenAnswerSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_LoginTokenAnswer
function Packet_LoginTokenAnswerSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_LoginTokenAnswerSerializer.GetType() end

---@return string
function Packet_LoginTokenAnswerSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_LoginTokenAnswerSerializer.Equals(obj) end

---@return number
function Packet_LoginTokenAnswerSerializer.GetHashCode() end


