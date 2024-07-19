---@meta

---@class RelaxedReadOnlyDictionary`2:  IEnumerable
---@field Item K
---@field Keys ICollection`1
---@field Values ICollection`1
---@field Count number
---@field IsReadOnly boolean
RelaxedReadOnlyDictionary`2 = {}

---@param values IDictionary`2
---@return RelaxedReadOnlyDictionary`2
function RelaxedReadOnlyDictionary`2.ctor(values) end

---@param key T
---@return K
function RelaxedReadOnlyDictionary`2.get_Item(key) end

---@param key T
---@param value K
function RelaxedReadOnlyDictionary`2.set_Item(key, value) end

---@return ICollection`1
function RelaxedReadOnlyDictionary`2.get_Keys() end

---@return ICollection`1
function RelaxedReadOnlyDictionary`2.get_Values() end

---@return number
function RelaxedReadOnlyDictionary`2.get_Count() end

---@return boolean
function RelaxedReadOnlyDictionary`2.get_IsReadOnly() end

---@param key T
---@param value K
function RelaxedReadOnlyDictionary`2.Add(key, value) end

---@param item KeyValuePair`2
function RelaxedReadOnlyDictionary`2.Add(item) end

function RelaxedReadOnlyDictionary`2.Clear() end

---@param item KeyValuePair`2
---@return boolean
function RelaxedReadOnlyDictionary`2.Contains(item) end

---@param key T
---@return boolean
function RelaxedReadOnlyDictionary`2.ContainsKey(key) end

---@param array KeyValuePair`2[]
---@param arrayIndex number
function RelaxedReadOnlyDictionary`2.CopyTo(array, arrayIndex) end

---@return function
function RelaxedReadOnlyDictionary`2.GetEnumerator() end

---@param key T
---@return boolean
function RelaxedReadOnlyDictionary`2.Remove(key) end

---@param item KeyValuePair`2
---@return boolean
function RelaxedReadOnlyDictionary`2.Remove(item) end

---@param key T
---@param value K&
---@return boolean
function RelaxedReadOnlyDictionary`2.TryGetValue(key, value) end

---@return userdata
function RelaxedReadOnlyDictionary`2.GetType() end

---@return string
function RelaxedReadOnlyDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function RelaxedReadOnlyDictionary`2.Equals(obj) end

---@return number
function RelaxedReadOnlyDictionary`2.GetHashCode() end


