---@meta

---@class JsonUtil
JsonUtil = {}


---@param value JToken
---@param target T
function JsonUtil.Populate(value, target) end

---@param data number
---@return T
function JsonUtil.FromBytes(data) end

---@param data string
---@return T
function JsonUtil.FromString(data) end

---@param obj T
---@return number
function JsonUtil.ToBytes(obj) end

---@param obj T
---@return string
function JsonUtil.ToString(obj) end

---@param obj T
---@return string
function JsonUtil.ToPrettyString(obj) end

---@param toPopulate userdata
---@param text string
---@param domain string
---@param settings? JsonSerializerSettings
function JsonUtil.PopulateObject(toPopulate, text, domain, settings) end

---@param domain string
---@param settings? JsonSerializerSettings
---@return JsonSerializer
function JsonUtil.CreateSerializerForDomain(domain, settings) end

---@param toPopulate userdata
---@param token JToken
---@param js JsonSerializer
function JsonUtil.PopulateObject(toPopulate, token, js) end

---@param text string
---@param domain string
---@param settings? JsonSerializerSettings
---@return T
function JsonUtil.ToObject(text, domain, settings) end

---@param token JToken
---@param domain string
---@param settings? JsonSerializerSettings
---@return T
function JsonUtil.ToObject(token, domain, settings) end

---@return userdata
function JsonUtil.GetType() end

---@return string
function JsonUtil.ToString() end

---@param obj userdata
---@return boolean
function JsonUtil.Equals(obj) end

---@return number
function JsonUtil.GetHashCode() end


