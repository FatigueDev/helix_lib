---@meta

---@class DictExtensions
DictExtensions = {}


---@param dict IDictionary`2
---@param elems IDictionary`2
function DictExtensions.AddRange(dict, elems) end

---@param dict IDictionary`2
---@param key K
---@param defaultValue? V
---@return V
function DictExtensions.Get(dict, key, defaultValue) end

---@param dict ConcurrentDictionary`2
---@param key K
function DictExtensions.Remove(dict, key) end

---@param dict IDictionary`2
---@param predicate Func`3
function DictExtensions.RemoveAll(dict, predicate) end

---@param dict IDictionary`2
---@param predicate Func`2
function DictExtensions.RemoveAllByKey(dict, predicate) end

---@return userdata
function DictExtensions.GetType() end

---@return string
function DictExtensions.ToString() end

---@param obj userdata
---@return boolean
function DictExtensions.Equals(obj) end

---@return number
function DictExtensions.GetHashCode() end


