---@meta

---@class QueueByte
---@field start number
---@field count number
---@field max number
QueueByte = {}

---@return QueueByte
function QueueByte.ctor() end

---@return number
function QueueByte.GetCount() end

---@param value number
function QueueByte.Enqueue(value) end

---@return number
function QueueByte.Dequeue() end

---@param data number
---@param length number
function QueueByte.DequeueRange(data, length) end

---@return userdata
function QueueByte.GetType() end

---@return string
function QueueByte.ToString() end

---@param obj userdata
---@return boolean
function QueueByte.Equals(obj) end

---@return number
function QueueByte.GetHashCode() end


