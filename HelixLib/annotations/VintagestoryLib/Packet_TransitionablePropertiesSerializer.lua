---@meta

---@class Packet_TransitionablePropertiesSerializer
Packet_TransitionablePropertiesSerializer = {}

---@return Packet_TransitionablePropertiesSerializer
function Packet_TransitionablePropertiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_TransitionableProperties
---@return Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_TransitionableProperties
---@return Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_TransitionableProperties
---@return Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.Serialize(stream, instance) end

---@param instance Packet_TransitionableProperties
---@return number
function Packet_TransitionablePropertiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_TransitionableProperties
function Packet_TransitionablePropertiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_TransitionablePropertiesSerializer.GetType() end

---@return string
function Packet_TransitionablePropertiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_TransitionablePropertiesSerializer.Equals(obj) end

---@return number
function Packet_TransitionablePropertiesSerializer.GetHashCode() end


