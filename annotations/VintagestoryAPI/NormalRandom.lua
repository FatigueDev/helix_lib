---@meta

---@class NormalRandom: Random, Random, IRandom
NormalRandom = {}

---@return NormalRandom
function NormalRandom.ctor() end
---@param Seed number
---@return NormalRandom
function NormalRandom.ctor(Seed) end

---@param max number
---@return number
function NormalRandom.NextInt(max) end

---@return number
function NormalRandom.NextInt() end

---@return number
function NormalRandom.Next() end

---@param maxValue number
---@return number
function NormalRandom.Next(maxValue) end

---@param minValue number
---@param maxValue number
---@return number
function NormalRandom.Next(minValue, maxValue) end

---@return number
function NormalRandom.NextInt64() end

---@param maxValue number
---@return number
function NormalRandom.NextInt64(maxValue) end

---@param minValue number
---@param maxValue number
---@return number
function NormalRandom.NextInt64(minValue, maxValue) end

---@return number
function NormalRandom.NextSingle() end

---@return number
function NormalRandom.NextDouble() end

---@param buffer number
function NormalRandom.NextBytes(buffer) end

---@param buffer Span`1
function NormalRandom.NextBytes(buffer) end

---@return userdata
function NormalRandom.GetType() end

---@return string
function NormalRandom.ToString() end

---@param obj userdata
---@return boolean
function NormalRandom.Equals(obj) end

---@return number
function NormalRandom.GetHashCode() end


