---@meta

---@class Packet_MoveKeyEnum
---@field Forward number
---@field Backward number
---@field Left number
---@field Right number
---@field Jump number
---@field Sneak number
---@field Down number
---@field Sprint number
---@field Sitting number
---@field FloorSitting number
---@field LeftMouseDown number
---@field RightMouseDown number
Packet_MoveKeyEnum = {}

---@return Packet_MoveKeyEnum
function Packet_MoveKeyEnum.ctor() end

---@return userdata
function Packet_MoveKeyEnum.GetType() end

---@return string
function Packet_MoveKeyEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_MoveKeyEnum.Equals(obj) end

---@return number
function Packet_MoveKeyEnum.GetHashCode() end


