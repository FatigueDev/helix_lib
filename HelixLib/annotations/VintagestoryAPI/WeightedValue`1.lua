---@meta

---@class WeightedValue`1
---@field Value T
---@field Weight number
WeightedValue`1 = {}

---@return WeightedValue`1
function WeightedValue`1.ctor() end
---@param value T
---@param weight number
---@return WeightedValue`1
function WeightedValue`1.ctor(value, weight) end

---@param value T
---@param weight number
---@return WeightedValue`1
function WeightedValue`1.New(value, weight) end

---@param value T
---@param weight? number
function WeightedValue`1.Set(value, weight) end

---@return userdata
function WeightedValue`1.GetType() end

---@return string
function WeightedValue`1.ToString() end

---@param obj userdata
---@return boolean
function WeightedValue`1.Equals(obj) end

---@return number
function WeightedValue`1.GetHashCode() end


