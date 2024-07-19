---@meta

---@class DependenciesConverter: JsonConverter, JsonConverter
---@field CanRead boolean
---@field CanWrite boolean
DependenciesConverter = {}

---@return DependenciesConverter
function DependenciesConverter.ctor() end

---@param objectType userdata
---@return boolean
function DependenciesConverter.CanConvert(objectType) end

---@param reader JsonReader
---@param objectType userdata
---@param existingValue userdata
---@param serializer JsonSerializer
---@return userdata
function DependenciesConverter.ReadJson(reader, objectType, existingValue, serializer) end

---@param writer JsonWriter
---@param value userdata
---@param serializer JsonSerializer
function DependenciesConverter.WriteJson(writer, value, serializer) end

---@return boolean
function DependenciesConverter.get_CanRead() end

---@return boolean
function DependenciesConverter.get_CanWrite() end

---@return userdata
function DependenciesConverter.GetType() end

---@return string
function DependenciesConverter.ToString() end

---@param obj userdata
---@return boolean
function DependenciesConverter.Equals(obj) end

---@return number
function DependenciesConverter.GetHashCode() end


