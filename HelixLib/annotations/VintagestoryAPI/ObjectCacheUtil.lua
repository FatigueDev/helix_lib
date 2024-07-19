---@meta

---@class ObjectCacheUtil
ObjectCacheUtil = {}


---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param key string
---@return T
function ObjectCacheUtil.TryGet(api, key) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param key string
---@param onRequireCreate CreateCachableObjectDelegate`1
---@return T
function ObjectCacheUtil.GetOrCreate(api, key, onRequireCreate) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param key string
---@return boolean
function ObjectCacheUtil.Delete(api, key) end

---@return userdata
function ObjectCacheUtil.GetType() end

---@return string
function ObjectCacheUtil.ToString() end

---@param obj userdata
---@return boolean
function ObjectCacheUtil.Equals(obj) end

---@return number
function ObjectCacheUtil.GetHashCode() end


