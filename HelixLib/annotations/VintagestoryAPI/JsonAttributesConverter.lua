---@meta

-- Implementation of JsonConverter that converts objects to an instance of a JsonObject
---@class JsonAttributesConverter: JsonConverter, JsonConverter
---@field CanRead boolean
---@field CanWrite boolean
JsonAttributesConverter = {}

---@return JsonAttributesConverter
function JsonAttributesConverter.ctor() end

---@param objectType userdata
---@return boolean
function JsonAttributesConverter.CanConvert(objectType) end

---@param reader JsonReader
---@param objectType userdata
---@param existingValue userdata
---@param serializer JsonSerializer
---@return userdata
function JsonAttributesConverter.ReadJson(reader, objectType, existingValue, serializer) end

---@param writer JsonWriter
---@param value userdata
---@param serializer JsonSerializer
function JsonAttributesConverter.WriteJson(writer, value, serializer) end

---@return boolean
function JsonAttributesConverter.get_CanRead() end

---@return boolean
function JsonAttributesConverter.get_CanWrite() end

---@return userdata
function JsonAttributesConverter.GetType() end

---@return string
function JsonAttributesConverter.ToString() end

---@param obj userdata
---@return boolean
function JsonAttributesConverter.Equals(obj) end

---@return number
function JsonAttributesConverter.GetHashCode() end


