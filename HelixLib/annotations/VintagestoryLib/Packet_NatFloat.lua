---@meta

---@class Packet_NatFloat
---@field Avg number
---@field Var number
---@field Dist number
---@field AvgFieldID number
---@field VarFieldID number
---@field DistFieldID number
Packet_NatFloat = {}

---@return Packet_NatFloat
function Packet_NatFloat.ctor() end

---@param value number
function Packet_NatFloat.SetAvg(value) end

---@param value number
function Packet_NatFloat.SetVar(value) end

---@param value number
function Packet_NatFloat.SetDist(value) end

---@return userdata
function Packet_NatFloat.GetType() end

---@return string
function Packet_NatFloat.ToString() end

---@param obj userdata
---@return boolean
function Packet_NatFloat.Equals(obj) end

---@return number
function Packet_NatFloat.GetHashCode() end


