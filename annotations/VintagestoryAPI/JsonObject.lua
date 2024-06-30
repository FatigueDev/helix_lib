---@meta

-- Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@class JsonObject
---@field Item JsonObject
---@field Exists boolean True if the token is not null
---@field Token JToken
JsonObject = {}

---@param token JToken
---@return JsonObject
function JsonObject.ctor(token) end
---@param original JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param unused boolean
---@return JsonObject
function JsonObject.ctor(original, unused) end

---@param jsonCode string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function JsonObject.FromJson(jsonCode) end

---@param key string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function JsonObject.get_Item(key) end

---@return boolean
function JsonObject.get_Exists() end

---@return JToken
function JsonObject.get_Token() end

---@param value JToken
function JsonObject.set_Token(value) end

-- True if the token has an element with given key
---@param key string
---@return boolean
function JsonObject.KeyExists(key) end

---@param defaultValue? T
---@return T
function JsonObject.AsObject(defaultValue) end

---@param defaultValue T
---@param domain string
---@return T
function JsonObject.AsObject(defaultValue, domain) end

---@param settings JsonSerializerSettings
---@param defaultValue T
---@param domain? string
---@return T
function JsonObject.AsObject(settings, defaultValue, domain) end

-- Turn the token into an array of JsonObjects
---@return JsonObject[] # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function JsonObject.AsArray() end

-- Turn the token into a string
---@param defaultValue? string
---@return string
function JsonObject.AsString(defaultValue) end

---@param defaultValue? string
---@param defaultDomain? string
---@return string
function JsonObject.AsStringArray(defaultValue, defaultDomain) end

---@param defaultValue? number
---@return number
function JsonObject.AsFloatArray(defaultValue) end

---@param defaultValue? T[]
---@param defaultDomain? string
---@return T[]
function JsonObject.AsArray(defaultValue, defaultDomain) end

-- Turn the token into a boolean
---@param defaultValue? boolean
---@return boolean
function JsonObject.AsBool(defaultValue) end

-- Turn the token into an integer
---@param defaultValue? number
---@return number
function JsonObject.AsInt(defaultValue) end

-- Turn the token into a float
---@param defaultValue? number
---@return number
function JsonObject.AsFloat(defaultValue) end

-- Turn the token into a double
---@param defaultValue? number
---@return number
function JsonObject.AsDouble(defaultValue) end

-- Calls token.ToString()
---@return string
function JsonObject.ToString() end

-- True if the token is a JArray
---@return boolean
function JsonObject.IsArray() end

-- Turns the token into an IAttribute with all its child elements, if it has any.
-- Note: If you converting this to a tree attribute, a subsequent call to tree.GetInt() might not work because Newtonsoft.JSON seems to load integers as long, so use GetDecimal() or GetLong() instead. Similar things might happen with float<->double
---@return IAttribute # An attribute from an attribute tree
function JsonObject.ToAttribute() end

---@param key string
---@param value string
function JsonObject.FillPlaceHolder(key, value) end

---@param array JArray
---@return T[]
function JsonObject.ToPrimitiveArray(array) end

-- Returns a deep clone
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function JsonObject.Clone() end

-- Returns true if this object has the named bool attribute, and it is true
---@param attrName string
---@return boolean
function JsonObject.IsTrue(attrName) end

---@return userdata
function JsonObject.GetType() end

---@param obj userdata
---@return boolean
function JsonObject.Equals(obj) end

---@return number
function JsonObject.GetHashCode() end


