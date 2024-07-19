---@meta

---@class Timer
---@field Interval number
---@field MaxDeltaTime number
---@field Accumulator number
---@field Tick nil
Timer = {}

---@return Timer
function Timer.ctor() end

---@return number
function Timer.get_Interval() end

---@param value number
function Timer.set_Interval(value) end

---@return number
function Timer.get_MaxDeltaTime() end

---@param value number
function Timer.set_MaxDeltaTime(value) end

function Timer.Reset() end

---@param tick Tick
function Timer.Update(tick) end

---@return userdata
function Timer.GetType() end

---@return string
function Timer.ToString() end

---@param obj userdata
---@return boolean
function Timer.Equals(obj) end

---@return number
function Timer.GetHashCode() end


