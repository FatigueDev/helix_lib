---@meta

---@class TransitionState
---@field Props TransitionableProperties
---@field FreshHoursLeft number
---@field TransitionLevel number
---@field TransitionedHours number
---@field TransitionHours number
---@field FreshHours number
TransitionState = {}

---@return TransitionState
function TransitionState.ctor() end

---@return userdata
function TransitionState.GetType() end

---@return string
function TransitionState.ToString() end

---@param obj userdata
---@return boolean
function TransitionState.Equals(obj) end

---@return number
function TransitionState.GetHashCode() end


