---@meta

---@class RingArray`1:  IEnumerable
---@field Item T
---@field EndPosition number
---@field Values T[]
---@field Length number Total size of the stack
RingArray`1 = {}

---@param capacity number
---@return RingArray`1
function RingArray`1.ctor(capacity) end
---@param capacity number
---@param initialvalues T[]
---@return RingArray`1
function RingArray`1.ctor(capacity, initialvalues) end

---@param index number
---@return T
function RingArray`1.get_Item(index) end

---@param index number
---@param value T
function RingArray`1.set_Item(index, value) end

---@return number
function RingArray`1.get_EndPosition() end

---@param value number
function RingArray`1.set_EndPosition(value) end

---@return T[]
function RingArray`1.get_Values() end

---@return number
function RingArray`1.get_Length() end

-- Pushes an element onto the end of the queue
---@param elem T
function RingArray`1.Add(elem) end

---@return function
function RingArray`1.GetEnumerator() end

-- Wipes the buffer and resets the count
function RingArray`1.Clear() end

-- If smaller than the old size, will discard oldest elements first
---@param size number
function RingArray`1.ResizeTo(size) end

---@return userdata
function RingArray`1.GetType() end

---@return string
function RingArray`1.ToString() end

---@param obj userdata
---@return boolean
function RingArray`1.Equals(obj) end

---@return number
function RingArray`1.GetHashCode() end


