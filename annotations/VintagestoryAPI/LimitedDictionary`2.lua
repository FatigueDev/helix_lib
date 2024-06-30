---@meta

-- Can only hold a limited amount of elements, discards oldest elements once the capacity is reached.
---@class LimitedDictionary`2
---@field Item TValue
---@field Count number
LimitedDictionary`2 = {}

---@param maxCapacity number
---@return LimitedDictionary`2
function LimitedDictionary`2.ctor(maxCapacity) end

---@param key TKey
---@param value TValue
function LimitedDictionary`2.Add(key, value) end

---@param key TKey
---@return TValue
function LimitedDictionary`2.get_Item(key) end

---@param key TKey
---@param value TValue
function LimitedDictionary`2.set_Item(key, value) end

---@return number
function LimitedDictionary`2.get_Count() end

---@return userdata
function LimitedDictionary`2.GetType() end

---@return string
function LimitedDictionary`2.ToString() end

---@param obj userdata
---@return boolean
function LimitedDictionary`2.Equals(obj) end

---@return number
function LimitedDictionary`2.GetHashCode() end


