---@meta

---@class Packet_RoleSerializer
Packet_RoleSerializer = {}

---@return Packet_RoleSerializer
function Packet_RoleSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Role
function Packet_RoleSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Role
---@return Packet_Role
function Packet_RoleSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Role
---@return Packet_Role
function Packet_RoleSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Role
---@return Packet_Role
function Packet_RoleSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Role
function Packet_RoleSerializer.Serialize(stream, instance) end

---@param instance Packet_Role
---@return number
function Packet_RoleSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Role
function Packet_RoleSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_RoleSerializer.GetType() end

---@return string
function Packet_RoleSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_RoleSerializer.Equals(obj) end

---@return number
function Packet_RoleSerializer.GetHashCode() end


