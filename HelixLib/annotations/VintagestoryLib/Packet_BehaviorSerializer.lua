---@meta

---@class Packet_BehaviorSerializer
Packet_BehaviorSerializer = {}

---@return Packet_BehaviorSerializer
function Packet_BehaviorSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Behavior
function Packet_BehaviorSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Behavior
---@return Packet_Behavior
function Packet_BehaviorSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Behavior
---@return Packet_Behavior
function Packet_BehaviorSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Behavior
---@return Packet_Behavior
function Packet_BehaviorSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Behavior
function Packet_BehaviorSerializer.Serialize(stream, instance) end

---@param instance Packet_Behavior
---@return number
function Packet_BehaviorSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Behavior
function Packet_BehaviorSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BehaviorSerializer.GetType() end

---@return string
function Packet_BehaviorSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BehaviorSerializer.Equals(obj) end

---@return number
function Packet_BehaviorSerializer.GetHashCode() end


