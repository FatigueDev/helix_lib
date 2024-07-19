---@meta

---@class Packet_RecipesSerializer
Packet_RecipesSerializer = {}

---@return Packet_RecipesSerializer
function Packet_RecipesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Recipes
function Packet_RecipesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Recipes
---@return Packet_Recipes
function Packet_RecipesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Recipes
---@return Packet_Recipes
function Packet_RecipesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Recipes
---@return Packet_Recipes
function Packet_RecipesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Recipes
function Packet_RecipesSerializer.Serialize(stream, instance) end

---@param instance Packet_Recipes
---@return number
function Packet_RecipesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Recipes
function Packet_RecipesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_RecipesSerializer.GetType() end

---@return string
function Packet_RecipesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_RecipesSerializer.Equals(obj) end

---@return number
function Packet_RecipesSerializer.GetHashCode() end


