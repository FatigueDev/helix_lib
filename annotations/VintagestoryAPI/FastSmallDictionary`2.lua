---@meta

-- A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
---@class FastSmallDictionary`2:  IEnumerable
---@field Keys ICollection`1
---@field Values ICollection`1
---@field IsReadOnly boolean
---@field Item TValue
FastSmallDictionary`2 = {}

---@param size number
---@return FastSmallDictionary`2
function FastSmallDictionary`2.ctor(size) end
---@param key TKey
---@param value TValue
---@return FastSmallDictionary`2
function FastSmallDictionary`2.ctor(key, value) end
---@param dict table
---@return FastSmallDictionary`2
function FastSmallDictionary`2.ctor(dict) end

---@return ICollection`1
function FastSmallDictionary`2.get_Keys() end

---@return ICollection`1
function FastSmallDictionary`2.get_Values() end

---@return boolean
function FastSmallDictionary`2.get_IsReadOnly() end

---@return FastSmallDictionary`2 # A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function FastSmallDictionary`2.Clone() end

---@return TKey
function FastSmallDictionary`2.GetFirstKey() end

---@param key TKey
---@return TValue
function FastSmallDictionary`2.get_Item(key) end

---@param key TKey
---@param value TValue
function FastSmallDictionary`2.set_Item(key, value) end

---@param key TKey
---@return boolean
function FastSmallDictionary`2.ContainsKey(key) end

---@param key TKey
---@param value TValue
function FastSmallDictionary`2.Add(key, value) end

---@param key TKey
---@param value TValue&
---@return boolean
function FastSmallDictionary`2.TryGetValue(key, value) end

function FastSmallDictionary`2.Clear() end

---@return function
function FastSmallDictionary`2.GetEnumerator() end

---@param item KeyValuePair`2
function FastSmallDictionary`2.Add(item) end

---@param item KeyValuePair`2
---@return boolean
function FastSmallDictionary`2.Contains(item) end

---@param key TKey
---@return boolean
function FastSmallDictionary`2.Remove(key) end

---@param item KeyValuePair`2
---@return boolean
function FastSmallDictionary`2.Remove(item) end

---@param array KeyValuePair`2[]
---@param arrayIndex number
function FastSmallDictionary`2.CopyTo(array, arrayIndex) end

---@return userdata
function FastSmallDictionary`2.GetType() end

---@return string
function FastSmallDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function FastSmallDictionary`2.Equals(obj) end

---@return number
function FastSmallDictionary`2.GetHashCode() end


