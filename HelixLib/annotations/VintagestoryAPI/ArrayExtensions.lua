---@meta

---@class ArrayExtensions
ArrayExtensions = {}


---@param array T[]
---@param getDistance Func`2
---@return T
function ArrayExtensions.Nearest(array, getDistance) end

---@param array T[]
---@param getDistance Func`2
---@param range number
---@return table
function ArrayExtensions.InRange(array, getDistance, range) end

---@param array T[]
---@param predicate Func`2
---@return number
function ArrayExtensions.IndexOf(array, predicate) end

---@param array T[]
---@param value T
---@return number
function ArrayExtensions.IndexOf(array, value) end

---@param array T[]
---@param value T
---@return boolean
function ArrayExtensions.Contains(array, value) end

---@param array T[]
---@param value T
---@return T[]
function ArrayExtensions.Remove(array, value) end

---@param array T[]
---@param index number
---@return T[]
function ArrayExtensions.RemoveEntry(array, index) end

---@param array T[]
---@param value T
---@return T[]
function ArrayExtensions.Append(array, value) end

---@param array T[]
---@param value T
---@param index number
---@return T[]
function ArrayExtensions.InsertAt(array, value, index) end

---@param array T[]
---@param value T[]
---@return T[]
function ArrayExtensions.Append(array, value) end

---@param array T[]
---@param values function
---@return T[]
function ArrayExtensions.Append(array, values) end

---@param originalArray T[]
---@param with T
---@return T[]
function ArrayExtensions.Fill(originalArray, with) end

---@param originalArray T[]
---@param fillCallback fillCallback`1
---@return T[]
function ArrayExtensions.Fill(originalArray, fillCallback) end

---@param array T[]
---@param rand Random
---@return T[]
function ArrayExtensions.Shuffle(array, rand) end

---@param array T[]
---@param rand LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@return T[]
function ArrayExtensions.Shuffle(array, rand) end

---@return userdata
function ArrayExtensions.GetType() end

---@return string
function ArrayExtensions.ToString() end

---@param obj userdata
---@return boolean
function ArrayExtensions.Equals(obj) end

---@return number
function ArrayExtensions.GetHashCode() end


