---@meta

-- Holds a limited amount of items, discards the lowest index item when an overflow happens
---@class LimitedList`1:  IEnumerable
---@field Item TElem
---@field Count number
LimitedList`1 = {}

---@param maxCapacity number
---@return LimitedList`1
function LimitedList`1.ctor(maxCapacity) end
---@param maxCapacity number
---@param initialElements function
---@return LimitedList`1
function LimitedList`1.ctor(maxCapacity, initialElements) end

---@param key TElem
function LimitedList`1.Add(key) end

---@param index number
---@return TElem
function LimitedList`1.get_Item(index) end

---@param maxCapacity number
function LimitedList`1.SetCapacity(maxCapacity) end

function LimitedList`1.Clear() end

---@return number
function LimitedList`1.get_Count() end

---@param i number
function LimitedList`1.RemoveAt(i) end

---@return TElem
function LimitedList`1.LastElement() end

---@return boolean
function LimitedList`1.IsFull() end

---@return function
function LimitedList`1.GetEnumerator() end

---@return TElem[]
function LimitedList`1.ToArray() end

---@return userdata
function LimitedList`1.GetType() end

---@return string
function LimitedList`1.ToString() end

---@param obj userdata
---@return boolean
function LimitedList`1.Equals(obj) end

---@return number
function LimitedList`1.GetHashCode() end


