---@meta

---@class Packet_TransitionableProperties
---@field FreshHours Packet_NatFloat
---@field TransitionHours Packet_NatFloat
---@field TransitionedStack number
---@field TransitionRatio number
---@field Type number
---@field FreshHoursFieldID number
---@field TransitionHoursFieldID number
---@field TransitionedStackFieldID number
---@field TransitionRatioFieldID number
---@field TypeFieldID number
Packet_TransitionableProperties = {}

---@return Packet_TransitionableProperties
function Packet_TransitionableProperties.ctor() end

---@param value Packet_NatFloat
function Packet_TransitionableProperties.SetFreshHours(value) end

---@param value Packet_NatFloat
function Packet_TransitionableProperties.SetTransitionHours(value) end

---@param value number
function Packet_TransitionableProperties.SetTransitionedStack(value) end

---@param value number
function Packet_TransitionableProperties.SetTransitionRatio(value) end

---@param value number
function Packet_TransitionableProperties.SetType(value) end

---@return userdata
function Packet_TransitionableProperties.GetType() end

---@return string
function Packet_TransitionableProperties.ToString() end

---@param obj userdata
---@return boolean
function Packet_TransitionableProperties.Equals(obj) end

---@return number
function Packet_TransitionableProperties.GetHashCode() end


