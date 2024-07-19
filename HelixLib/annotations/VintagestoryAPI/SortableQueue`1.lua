---@meta

---@class SortableQueue`1
---@field Count number
---@field maxSize number
SortableQueue`1 = {}

---@return SortableQueue`1
function SortableQueue`1.ctor() end

function SortableQueue`1.Clear() end

---@param v T
function SortableQueue`1.Enqueue(v) end

---@param v T
function SortableQueue`1.EnqueueOrMerge(v) end

-- Will return invalid data if called when Count <= 0: it is the responsibility of the calling code to check Count > 0
---@return T
function SortableQueue`1.Dequeue() end

function SortableQueue`1.Sort() end

---@param action function
function SortableQueue`1.RunForEach(action) end

-- Will return invalid data if called when Count <= 0: it is the responsibility of the calling code to check Count > 0
---@return T
function SortableQueue`1.DequeueLIFO() end

---@return userdata
function SortableQueue`1.GetType() end

---@return string
function SortableQueue`1.ToString() end

---@param obj userdata
---@return boolean
function SortableQueue`1.Equals(obj) end

---@return number
function SortableQueue`1.GetHashCode() end


