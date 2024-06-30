---@meta

---@class EnumerableExtensions
EnumerableExtensions = {}


---@param array function
---@param onelement function
function EnumerableExtensions.Foreach(array, onelement) end

---@param array function
---@param getDistance Func`2
---@return T
function EnumerableExtensions.Nearest(array, getDistance) end

---@param array function
---@param getDistance Func`2
---@return number
function EnumerableExtensions.NearestDistance(array, getDistance) end

---@return userdata
function EnumerableExtensions.GetType() end

---@return string
function EnumerableExtensions.ToString() end

---@param obj userdata
---@return boolean
function EnumerableExtensions.Equals(obj) end

---@return number
function EnumerableExtensions.GetHashCode() end


