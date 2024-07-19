---@meta

---@class Packet_ToolModeSerializer
Packet_ToolModeSerializer = {}

---@return Packet_ToolModeSerializer
function Packet_ToolModeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ToolMode
function Packet_ToolModeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ToolMode
---@return Packet_ToolMode
function Packet_ToolModeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ToolMode
---@return Packet_ToolMode
function Packet_ToolModeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ToolMode
---@return Packet_ToolMode
function Packet_ToolModeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ToolMode
function Packet_ToolModeSerializer.Serialize(stream, instance) end

---@param instance Packet_ToolMode
---@return number
function Packet_ToolModeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ToolMode
function Packet_ToolModeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ToolModeSerializer.GetType() end

---@return string
function Packet_ToolModeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ToolModeSerializer.Equals(obj) end

---@return number
function Packet_ToolModeSerializer.GetHashCode() end


