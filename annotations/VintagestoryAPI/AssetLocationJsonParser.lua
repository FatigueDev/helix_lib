---@meta

---@class AssetLocationJsonParser: JsonConverter, JsonConverter
---@field CanRead boolean
---@field CanWrite boolean
AssetLocationJsonParser = {}

---@param domain string
---@return AssetLocationJsonParser
function AssetLocationJsonParser.ctor(domain) end

---@param objectType userdata
---@return boolean
function AssetLocationJsonParser.CanConvert(objectType) end

---@param reader JsonReader
---@param objectType userdata
---@param existingValue userdata
---@param serializer JsonSerializer
---@return userdata
function AssetLocationJsonParser.ReadJson(reader, objectType, existingValue, serializer) end

---@param writer JsonWriter
---@param value userdata
---@param serializer JsonSerializer
function AssetLocationJsonParser.WriteJson(writer, value, serializer) end

---@return boolean
function AssetLocationJsonParser.get_CanRead() end

---@return boolean
function AssetLocationJsonParser.get_CanWrite() end

---@return userdata
function AssetLocationJsonParser.GetType() end

---@return string
function AssetLocationJsonParser.ToString() end

---@param obj userdata
---@return boolean
function AssetLocationJsonParser.Equals(obj) end

---@return number
function AssetLocationJsonParser.GetHashCode() end


