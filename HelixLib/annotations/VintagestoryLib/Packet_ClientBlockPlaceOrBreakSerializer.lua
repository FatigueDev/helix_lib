---@meta

---@class Packet_ClientBlockPlaceOrBreakSerializer
Packet_ClientBlockPlaceOrBreakSerializer = {}

---@return Packet_ClientBlockPlaceOrBreakSerializer
function Packet_ClientBlockPlaceOrBreakSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientBlockPlaceOrBreak
---@return Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientBlockPlaceOrBreak
---@return Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientBlockPlaceOrBreak
---@return Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.Serialize(stream, instance) end

---@param instance Packet_ClientBlockPlaceOrBreak
---@return number
function Packet_ClientBlockPlaceOrBreakSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreakSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientBlockPlaceOrBreakSerializer.GetType() end

---@return string
function Packet_ClientBlockPlaceOrBreakSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientBlockPlaceOrBreakSerializer.Equals(obj) end

---@return number
function Packet_ClientBlockPlaceOrBreakSerializer.GetHashCode() end


