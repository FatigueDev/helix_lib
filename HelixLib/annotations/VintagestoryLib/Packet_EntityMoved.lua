---@meta

---@class Packet_EntityMoved
---@field EntityId number
---@field EntityPosition Packet_EntityPosition
---@field MotionX number
---@field MotionY number
---@field MotionZ number
---@field IsTeleport number
---@field Controls number
---@field ActiveAnimations number
---@field ActiveAnimationsCount number
---@field ActiveAnimationsLength number
---@field ActiveAnimationSpeeds number
---@field ActiveAnimationSpeedsCount number
---@field ActiveAnimationSpeedsLength number
---@field EntityIdFieldID number
---@field EntityPositionFieldID number
---@field MotionXFieldID number
---@field MotionYFieldID number
---@field MotionZFieldID number
---@field IsTeleportFieldID number
---@field ControlsFieldID number
---@field ActiveAnimationsFieldID number
---@field ActiveAnimationSpeedsFieldID number
Packet_EntityMoved = {}

---@return Packet_EntityMoved
function Packet_EntityMoved.ctor() end

---@param value number
function Packet_EntityMoved.SetEntityId(value) end

---@param value Packet_EntityPosition
function Packet_EntityMoved.SetEntityPosition(value) end

---@param value number
function Packet_EntityMoved.SetMotionX(value) end

---@param value number
function Packet_EntityMoved.SetMotionY(value) end

---@param value number
function Packet_EntityMoved.SetMotionZ(value) end

---@param value number
function Packet_EntityMoved.SetIsTeleport(value) end

---@param value number
function Packet_EntityMoved.SetControls(value) end

---@return number
function Packet_EntityMoved.GetActiveAnimations() end

---@param value number
---@param count number
---@param length number
function Packet_EntityMoved.SetActiveAnimations(value, count, length) end

---@param value number
function Packet_EntityMoved.SetActiveAnimations(value) end

---@return number
function Packet_EntityMoved.GetActiveAnimationsCount() end

---@param value number
function Packet_EntityMoved.ActiveAnimationsAdd(value) end

---@return number
function Packet_EntityMoved.GetActiveAnimationSpeeds() end

---@param value number
---@param count number
---@param length number
function Packet_EntityMoved.SetActiveAnimationSpeeds(value, count, length) end

---@param value number
function Packet_EntityMoved.SetActiveAnimationSpeeds(value) end

---@return number
function Packet_EntityMoved.GetActiveAnimationSpeedsCount() end

---@param value number
function Packet_EntityMoved.ActiveAnimationSpeedsAdd(value) end

---@return userdata
function Packet_EntityMoved.GetType() end

---@return string
function Packet_EntityMoved.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityMoved.Equals(obj) end

---@return number
function Packet_EntityMoved.GetHashCode() end


