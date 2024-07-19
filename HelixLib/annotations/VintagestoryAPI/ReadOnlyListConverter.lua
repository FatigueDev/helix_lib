---@meta

---@class ReadOnlyListConverter: JsonConverter, JsonConverter
---@field CanRead boolean
---@field CanWrite boolean
ReadOnlyListConverter = {}

---@return ReadOnlyListConverter
function ReadOnlyListConverter.ctor() end

---@param objectType userdata
---@return boolean
function ReadOnlyListConverter.CanConvert(objectType) end

---@param reader JsonReader
---@param objectType userdata
---@param existingValue userdata
---@param serializer JsonSerializer
---@return userdata
function ReadOnlyListConverter.ReadJson(reader, objectType, existingValue, serializer) end

---@param writer JsonWriter
---@param value userdata
---@param serializer JsonSerializer
function ReadOnlyListConverter.WriteJson(writer, value, serializer) end

---@return boolean
function ReadOnlyListConverter.get_CanRead() end

---@return boolean
function ReadOnlyListConverter.get_CanWrite() end

---@return userdata
function ReadOnlyListConverter.GetType() end

---@return string
function ReadOnlyListConverter.ToString() end

---@param obj userdata
---@return boolean
function ReadOnlyListConverter.Equals(obj) end

---@return number
function ReadOnlyListConverter.GetHashCode() end


