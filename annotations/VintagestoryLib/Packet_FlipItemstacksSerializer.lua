---@meta

---@class Packet_FlipItemstacksSerializer
Packet_FlipItemstacksSerializer = {}

---@return Packet_FlipItemstacksSerializer
function Packet_FlipItemstacksSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_FlipItemstacks
---@return Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_FlipItemstacks
---@return Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_FlipItemstacks
---@return Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.Serialize(stream, instance) end

---@param instance Packet_FlipItemstacks
---@return number
function Packet_FlipItemstacksSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_FlipItemstacks
function Packet_FlipItemstacksSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_FlipItemstacksSerializer.GetType() end

---@return string
function Packet_FlipItemstacksSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_FlipItemstacksSerializer.Equals(obj) end

---@return number
function Packet_FlipItemstacksSerializer.GetHashCode() end


