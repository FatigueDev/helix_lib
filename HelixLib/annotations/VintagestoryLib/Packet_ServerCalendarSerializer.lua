---@meta

---@class Packet_ServerCalendarSerializer
Packet_ServerCalendarSerializer = {}

---@return Packet_ServerCalendarSerializer
function Packet_ServerCalendarSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerCalendar
function Packet_ServerCalendarSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerCalendar
---@return Packet_ServerCalendar
function Packet_ServerCalendarSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerCalendar
---@return Packet_ServerCalendar
function Packet_ServerCalendarSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerCalendar
---@return Packet_ServerCalendar
function Packet_ServerCalendarSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerCalendar
function Packet_ServerCalendarSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerCalendar
---@return number
function Packet_ServerCalendarSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerCalendar
function Packet_ServerCalendarSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerCalendarSerializer.GetType() end

---@return string
function Packet_ServerCalendarSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerCalendarSerializer.Equals(obj) end

---@return number
function Packet_ServerCalendarSerializer.GetHashCode() end


