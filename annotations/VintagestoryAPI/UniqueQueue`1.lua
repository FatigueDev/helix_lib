---@meta

-- Same as your normal c# queue but ensures that every element is contained only once using a Hashset.
---@class UniqueQueue`1:  IEnumerable
---@field Count number Amount of elements in the queue
UniqueQueue`1 = {}

---@return UniqueQueue`1
function UniqueQueue`1.ctor() end

---@return number
function UniqueQueue`1.get_Count() end

-- Emptys the queue and the hashset
function UniqueQueue`1.Clear() end

-- Check if given item is contained. Uses the hashset to find the item.
---@param item T
---@return boolean
function UniqueQueue`1.Contains(item) end

-- Adds an item to the queue
---@param item T
function UniqueQueue`1.Enqueue(item) end

-- Removes an item from the queue
---@return T
function UniqueQueue`1.Dequeue() end

-- Returns the first item in the queue without removing it.
---@return T
function UniqueQueue`1.Peek() end

---@return function
function UniqueQueue`1.GetEnumerator() end

---@return userdata
function UniqueQueue`1.GetType() end

---@return string
function UniqueQueue`1.ToString() end

---@param obj userdata
---@return boolean
function UniqueQueue`1.Equals(obj) end

---@return number
function UniqueQueue`1.GetHashCode() end


