---@meta

-- Does not clear elements in Clear(), but only sets the Count to 0
---@class FastList`1:  IEnumerable
---@field Count number
---@field Item TElem
FastList`1 = {}

---@return FastList`1
function FastList`1.ctor() end

---@return number
function FastList`1.get_Count() end

---@param elem TElem
function FastList`1.Add(elem) end

function FastList`1.Clear() end

---@param index number
function FastList`1.RemoveAt(index) end

---@param index number
---@return TElem
function FastList`1.get_Item(index) end

---@param index number
---@param value TElem
function FastList`1.set_Item(index, value) end

---@return function
function FastList`1.GetEnumerator() end

---@param needle TElem
---@return boolean
function FastList`1.Contains(needle) end

---@return userdata
function FastList`1.GetType() end

---@return string
function FastList`1.ToString() end

---@param obj userdata
---@return boolean
function FastList`1.Equals(obj) end

---@return number
function FastList`1.GetHashCode() end


