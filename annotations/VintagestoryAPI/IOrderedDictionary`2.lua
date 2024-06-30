---@meta

-- Represents a generic collection of key/value pairs that are ordered independently of the key and value.
---@class IOrderedDictionary`2:  ICollection, IDictionary, IEnumerable, IOrderedDictionary
IOrderedDictionary`2 = {}


---@param key TKey
---@param value TValue
---@return number
function IOrderedDictionary`2.Add(key, value) end

---@param index number
---@param key TKey
---@param value TValue
function IOrderedDictionary`2.Insert(index, key, value) end

---@param index number
---@return TValue
function IOrderedDictionary`2.GetValueAtIndex(index) end

---@param index number
---@param value TValue
function IOrderedDictionary`2.SetAtIndex(index, value) end


