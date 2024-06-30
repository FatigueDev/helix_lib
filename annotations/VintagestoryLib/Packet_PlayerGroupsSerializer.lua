---@meta

---@class Packet_PlayerGroupsSerializer
Packet_PlayerGroupsSerializer = {}

---@return Packet_PlayerGroupsSerializer
function Packet_PlayerGroupsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerGroups
---@return Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerGroups
---@return Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerGroups
---@return Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerGroups
---@return number
function Packet_PlayerGroupsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerGroups
function Packet_PlayerGroupsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerGroupsSerializer.GetType() end

---@return string
function Packet_PlayerGroupsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerGroupsSerializer.Equals(obj) end

---@return number
function Packet_PlayerGroupsSerializer.GetHashCode() end


