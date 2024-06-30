---@meta

---@class QueueOfInt
---@field Count number
---@field maxSize number
QueueOfInt = {}

---@return QueueOfInt
function QueueOfInt.ctor() end

function QueueOfInt.Clear() end

-- Enqueue a single value with four separate components, assumed to be signed int in the range -128 to +127
---@param a number
---@param b number
---@param c number
---@param d number
function QueueOfInt.Enqueue(a, b, c, d) end

---@param v number
function QueueOfInt.Enqueue(v) end

-- Special method for ChunkIlluminator, if already present does not enqueue, but replaces only if value d (lowest 5 bits representing the spreadlight value) is larger
---@param a number
---@param b number
---@param c number
---@param d number
function QueueOfInt.EnqueueIfLarger(a, b, c, d) end

---@param v number
function QueueOfInt.EnqueueIfLarger(v) end

-- Will return invalid data if called when Count <= 0: it is the responsibility of the calling code to check Count > 0
---@return number
function QueueOfInt.Dequeue() end

-- Will return invalid data if called when Count <= 0: it is the responsibility of the calling code to check Count > 0
---@return number
function QueueOfInt.DequeueLIFO() end

---@return userdata
function QueueOfInt.GetType() end

---@return string
function QueueOfInt.ToString() end

---@param obj userdata
---@return boolean
function QueueOfInt.Equals(obj) end

---@return number
function QueueOfInt.GetHashCode() end


