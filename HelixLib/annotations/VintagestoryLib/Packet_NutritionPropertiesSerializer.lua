---@meta

---@class Packet_NutritionPropertiesSerializer
Packet_NutritionPropertiesSerializer = {}

---@return Packet_NutritionPropertiesSerializer
function Packet_NutritionPropertiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_NutritionProperties
---@return Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NutritionProperties
---@return Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NutritionProperties
---@return Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.Serialize(stream, instance) end

---@param instance Packet_NutritionProperties
---@return number
function Packet_NutritionPropertiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_NutritionProperties
function Packet_NutritionPropertiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_NutritionPropertiesSerializer.GetType() end

---@return string
function Packet_NutritionPropertiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_NutritionPropertiesSerializer.Equals(obj) end

---@return number
function Packet_NutritionPropertiesSerializer.GetHashCode() end


