---@meta

---@class ListDictionary`2: Dictionary`2, IDeserializationCallback, ISerializable, ICollection, IDictionary, IEnumerable
---@field Comparer IEqualityComparer`1
---@field Count number
---@field Keys KeyCollection
---@field Values ValueCollection
---@field Item table
ListDictionary`2 = {}

---@return ListDictionary`2
function ListDictionary`2.ctor() end
---@param capacity number
---@return ListDictionary`2
function ListDictionary`2.ctor(capacity) end
---@param comparer IEqualityComparer`1
---@return ListDictionary`2
function ListDictionary`2.ctor(comparer) end
---@param dictionary IDictionary`2
---@return ListDictionary`2
function ListDictionary`2.ctor(dictionary) end
---@param capacity number
---@param comparer IEqualityComparer`1
---@return ListDictionary`2
function ListDictionary`2.ctor(capacity, comparer) end
---@param dictionary IDictionary`2
---@param comparer IEqualityComparer`1
---@return ListDictionary`2
function ListDictionary`2.ctor(dictionary, comparer) end

---@param key TKey
---@param value TValue
function ListDictionary`2.Add(key, value) end

---@param key TKey
---@param value TValue
---@return TValue
function ListDictionary`2.GetEquivalent(key, value) end

---@param key TKey
---@param value TValue
---@return boolean
function ListDictionary`2.ContainsValue(key, value) end

---@param value TValue
---@return boolean
function ListDictionary`2.ContainsValue(value) end

---@param key TKey
function ListDictionary`2.ClearKey(key) end

---@param key TKey
---@param value TValue
---@return boolean
function ListDictionary`2.Remove(key, value) end

---@param value TValue
---@return boolean
function ListDictionary`2.Remove(value) end

---@param value TValue
---@return TKey
function ListDictionary`2.GetKeyOfValue(value) end

---@return IEqualityComparer`1
function ListDictionary`2.get_Comparer() end

---@return number
function ListDictionary`2.get_Count() end

---@return KeyCollection
function ListDictionary`2.get_Keys() end

---@return ValueCollection
function ListDictionary`2.get_Values() end

---@param key TKey
---@return table
function ListDictionary`2.get_Item(key) end

---@param key TKey
---@param value table
function ListDictionary`2.set_Item(key, value) end

---@param key TKey
---@param value table
function ListDictionary`2.Add(key, value) end

function ListDictionary`2.Clear() end

---@param key TKey
---@return boolean
function ListDictionary`2.ContainsKey(key) end

---@param value table
---@return boolean
function ListDictionary`2.ContainsValue(value) end

---@return Enumerator
function ListDictionary`2.GetEnumerator() end

---@param info SerializationInfo
---@param context StreamingContext
function ListDictionary`2.GetObjectData(info, context) end

---@param sender userdata
function ListDictionary`2.OnDeserialization(sender) end

---@param key TKey
---@return boolean
function ListDictionary`2.Remove(key) end

---@param key TKey
---@param value table
---@return boolean
function ListDictionary`2.Remove(key, value) end

---@param key TKey
---@param value table
---@return boolean
function ListDictionary`2.TryGetValue(key, value) end

---@param key TKey
---@param value table
---@return boolean
function ListDictionary`2.TryAdd(key, value) end

---@param capacity number
---@return number
function ListDictionary`2.EnsureCapacity(capacity) end

function ListDictionary`2.TrimExcess() end

---@param capacity number
function ListDictionary`2.TrimExcess(capacity) end

---@return userdata
function ListDictionary`2.GetType() end

---@return string
function ListDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function ListDictionary`2.Equals(obj) end

---@return number
function ListDictionary`2.GetHashCode() end


