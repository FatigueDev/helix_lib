---@meta

---@class Packet_RolesSerializer
Packet_RolesSerializer = {}

---@return Packet_RolesSerializer
function Packet_RolesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Roles
function Packet_RolesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Roles
---@return Packet_Roles
function Packet_RolesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Roles
---@return Packet_Roles
function Packet_RolesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Roles
---@return Packet_Roles
function Packet_RolesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Roles
function Packet_RolesSerializer.Serialize(stream, instance) end

---@param instance Packet_Roles
---@return number
function Packet_RolesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Roles
function Packet_RolesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_RolesSerializer.GetType() end

---@return string
function Packet_RolesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_RolesSerializer.Equals(obj) end

---@return number
function Packet_RolesSerializer.GetHashCode() end


