---@meta

---@class ThreadSafeRandom: Random, Random
ThreadSafeRandom = {}

---@param seed number
---@return ThreadSafeRandom
function ThreadSafeRandom.ctor(seed) end
---@return ThreadSafeRandom
function ThreadSafeRandom.ctor() end

---@param maxValue number
---@return number
function ThreadSafeRandom.Next(maxValue) end

---@return number
function ThreadSafeRandom.NextDouble() end

---@return number
function ThreadSafeRandom.Next() end

---@param minValue number
---@param maxValue number
---@return number
function ThreadSafeRandom.Next(minValue, maxValue) end

---@param buffer number
function ThreadSafeRandom.NextBytes(buffer) end

---@return number
function ThreadSafeRandom.NextInt64() end

---@param maxValue number
---@return number
function ThreadSafeRandom.NextInt64(maxValue) end

---@param minValue number
---@param maxValue number
---@return number
function ThreadSafeRandom.NextInt64(minValue, maxValue) end

---@return number
function ThreadSafeRandom.NextSingle() end

---@param buffer Span`1
function ThreadSafeRandom.NextBytes(buffer) end

---@return userdata
function ThreadSafeRandom.GetType() end

---@return string
function ThreadSafeRandom.ToString() end

---@param obj userdata
---@return boolean
function ThreadSafeRandom.Equals(obj) end

---@return number
function ThreadSafeRandom.GetHashCode() end


