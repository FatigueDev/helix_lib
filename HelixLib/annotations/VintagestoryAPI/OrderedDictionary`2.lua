---@meta

-- Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@class OrderedDictionary`2:  IEnumerable
---@field InternalDictionary table
---@field Item TValue
---@field Count number
---@field Keys ICollection`1
---@field ValuesOrdered function
---@field Values ICollection`1 Important: these are NOT ordered.   The ordered values is obtained by .ValuesOrdered
---@field IsReadOnly boolean
OrderedDictionary`2 = {}

---@return OrderedDictionary`2
function OrderedDictionary`2.ctor() end
---@param capacity number
---@return OrderedDictionary`2
function OrderedDictionary`2.ctor(capacity) end
---@param comparer IEqualityComparer`1
---@return OrderedDictionary`2
function OrderedDictionary`2.ctor(comparer) end
---@param capacity number
---@param comparer IEqualityComparer`1
---@return OrderedDictionary`2
function OrderedDictionary`2.ctor(capacity, comparer) end
---@param initialData OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@return OrderedDictionary`2
function OrderedDictionary`2.ctor(initialData) end
---@param initialData table
---@return OrderedDictionary`2
function OrderedDictionary`2.ctor(initialData) end

---@return table
function OrderedDictionary`2.get_InternalDictionary() end

---@param index number
---@param key TKey
---@param value TValue
function OrderedDictionary`2.Insert(index, key, value) end

---@param Atkey TKey
---@param key TKey
---@param value TValue
function OrderedDictionary`2.InsertBefore(Atkey, key, value) end

---@param index number
function OrderedDictionary`2.RemoveAt(index) end

---@param index number
---@return TValue
function OrderedDictionary`2.GetValueAtIndex(index) end

---@param index number
---@return TKey
function OrderedDictionary`2.GetKeyAtIndex(index) end

---@param index number
---@param value TValue
function OrderedDictionary`2.SetAtIndex(index, value) end

---@param key TKey
---@param value TValue
---@return number
function OrderedDictionary`2.Add(key, value) end

function OrderedDictionary`2.Clear() end

---@param key TKey
---@return boolean
function OrderedDictionary`2.ContainsKey(key) end

-- Returns -1 if the key was not found
---@param key TKey
---@return number
function OrderedDictionary`2.IndexOfKey(key) end

---@param key TKey
---@return boolean
function OrderedDictionary`2.Remove(key) end

---@param key TKey
---@return TValue
function OrderedDictionary`2.get_Item(key) end

---@param key TKey
---@param value TValue
function OrderedDictionary`2.set_Item(key, value) end

---@return number
function OrderedDictionary`2.get_Count() end

---@return ICollection`1
function OrderedDictionary`2.get_Keys() end

---@return function
function OrderedDictionary`2.get_ValuesOrdered() end

---@param key TKey
---@param value TValue&
---@return boolean
function OrderedDictionary`2.TryGetValue(key, value) end

---@param key TKey
---@return TValue
function OrderedDictionary`2.TryGetValue(key) end

---@return ICollection`1
function OrderedDictionary`2.get_Values() end

---@return boolean
function OrderedDictionary`2.get_IsReadOnly() end

---@return function
function OrderedDictionary`2.GetEnumerator() end

---@param value TValue
---@return boolean
function OrderedDictionary`2.ContainsValue(value) end

---@return userdata
function OrderedDictionary`2.GetType() end

---@return string
function OrderedDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function OrderedDictionary`2.Equals(obj) end

---@return number
function OrderedDictionary`2.GetHashCode() end


