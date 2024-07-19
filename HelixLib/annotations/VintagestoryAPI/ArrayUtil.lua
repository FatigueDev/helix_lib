---@meta

---@class ArrayUtil
ArrayUtil = {}


---@param quantity number
---@param fillCallback fillCallback`1
---@return T[]
function ArrayUtil.CreateFilled(quantity, fillCallback) end

---@param quantity number
---@param with T
---@return T[]
function ArrayUtil.CreateFilled(quantity, with) end

---@param src T[]
---@param count number
---@return T[]
function ArrayUtil.FastCopy(src, count) end

---@return userdata
function ArrayUtil.GetType() end

---@return string
function ArrayUtil.ToString() end

---@param obj userdata
---@return boolean
function ArrayUtil.Equals(obj) end

---@return number
function ArrayUtil.GetHashCode() end


