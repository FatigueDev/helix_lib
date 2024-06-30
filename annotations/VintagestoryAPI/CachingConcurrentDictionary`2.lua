---@meta

-- Exactly like ConcurrentDictionary except that Values is cached for performance, instead of building a new List each time Values is accessed The cache is only guaranteed up to date if CachedConcurrentDictionary.TryAdd, .TryRemove or [] methods are used to modify the Dictionary otherwise the cache will be updated next time when one of those methods is used
---@class CachingConcurrentDictionary`2: ConcurrentDictionary`2, ICollection, IDictionary, IEnumerable
---@field Values ICollection`1
---@field Item TValue
---@field Comparer IEqualityComparer`1
---@field Count number
---@field IsEmpty boolean
---@field Keys ICollection`1
CachingConcurrentDictionary`2 = {}

---@return CachingConcurrentDictionary`2
function CachingConcurrentDictionary`2.ctor() end

---@return ICollection`1
function CachingConcurrentDictionary`2.get_Values() end

---@param key TKey
---@param value TValue
---@return boolean
function CachingConcurrentDictionary`2.TryAdd(key, value) end

---@param key TKey
---@param value TValue&
---@return boolean
function CachingConcurrentDictionary`2.TryRemove(key, value) end

---@param key TKey
---@return TValue
function CachingConcurrentDictionary`2.get_Item(key) end

---@param key TKey
---@param value TValue
function CachingConcurrentDictionary`2.set_Item(key, value) end

---@param key TKey
---@param value TValue
---@return boolean
function CachingConcurrentDictionary`2.TryAdd(key, value) end

---@param key TKey
---@return boolean
function CachingConcurrentDictionary`2.ContainsKey(key) end

---@param key TKey
---@param value TValue&
---@return boolean
function CachingConcurrentDictionary`2.TryRemove(key, value) end

---@param item KeyValuePair`2
---@return boolean
function CachingConcurrentDictionary`2.TryRemove(item) end

---@param key TKey
---@param value TValue&
---@return boolean
function CachingConcurrentDictionary`2.TryGetValue(key, value) end

---@param key TKey
---@param newValue TValue
---@param comparisonValue TValue
---@return boolean
function CachingConcurrentDictionary`2.TryUpdate(key, newValue, comparisonValue) end

function CachingConcurrentDictionary`2.Clear() end

---@return KeyValuePair`2[]
function CachingConcurrentDictionary`2.ToArray() end

---@return function
function CachingConcurrentDictionary`2.GetEnumerator() end

---@param key TKey
---@return TValue
function CachingConcurrentDictionary`2.get_Item(key) end

---@param key TKey
---@param value TValue
function CachingConcurrentDictionary`2.set_Item(key, value) end

---@return IEqualityComparer`1
function CachingConcurrentDictionary`2.get_Comparer() end

---@return number
function CachingConcurrentDictionary`2.get_Count() end

---@param key TKey
---@param valueFactory Func`2
---@return TValue
function CachingConcurrentDictionary`2.GetOrAdd(key, valueFactory) end

---@param key TKey
---@param valueFactory Func`3
---@param factoryArgument TArg
---@return TValue
function CachingConcurrentDictionary`2.GetOrAdd(key, valueFactory, factoryArgument) end

---@param key TKey
---@param value TValue
---@return TValue
function CachingConcurrentDictionary`2.GetOrAdd(key, value) end

---@param key TKey
---@param addValueFactory Func`3
---@param updateValueFactory Func`4
---@param factoryArgument TArg
---@return TValue
function CachingConcurrentDictionary`2.AddOrUpdate(key, addValueFactory, updateValueFactory, factoryArgument) end

---@param key TKey
---@param addValueFactory Func`2
---@param updateValueFactory Func`3
---@return TValue
function CachingConcurrentDictionary`2.AddOrUpdate(key, addValueFactory, updateValueFactory) end

---@param key TKey
---@param addValue TValue
---@param updateValueFactory Func`3
---@return TValue
function CachingConcurrentDictionary`2.AddOrUpdate(key, addValue, updateValueFactory) end

---@return boolean
function CachingConcurrentDictionary`2.get_IsEmpty() end

---@return ICollection`1
function CachingConcurrentDictionary`2.get_Keys() end

---@return ICollection`1
function CachingConcurrentDictionary`2.get_Values() end

---@return userdata
function CachingConcurrentDictionary`2.GetType() end

---@return string
function CachingConcurrentDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function CachingConcurrentDictionary`2.Equals(obj) end

---@return number
function CachingConcurrentDictionary`2.GetHashCode() end


