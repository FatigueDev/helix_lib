---@meta

---@class Packet_ServerQueryAnswerSerializer
Packet_ServerQueryAnswerSerializer = {}

---@return Packet_ServerQueryAnswerSerializer
function Packet_ServerQueryAnswerSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerQueryAnswer
---@return Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerQueryAnswer
---@return Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerQueryAnswer
---@return Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerQueryAnswer
---@return number
function Packet_ServerQueryAnswerSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerQueryAnswer
function Packet_ServerQueryAnswerSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerQueryAnswerSerializer.GetType() end

---@return string
function Packet_ServerQueryAnswerSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerQueryAnswerSerializer.Equals(obj) end

---@return number
function Packet_ServerQueryAnswerSerializer.GetHashCode() end


