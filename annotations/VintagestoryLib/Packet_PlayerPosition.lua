---@meta

---@class Packet_PlayerPosition
---@field EntityId number
---@field Xint number
---@field Yint number
---@field Zint number
---@field Xfrac number
---@field Yfrac number
---@field Zfrac number
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field HeadYaw number
---@field HeadPitch number
---@field BodyYaw number
---@field MountedPosition Packet_EntityMoved
---@field PositionVersionNumber number
---@field EntityIdFieldID number
---@field XintFieldID number
---@field YintFieldID number
---@field ZintFieldID number
---@field XfracFieldID number
---@field YfracFieldID number
---@field ZfracFieldID number
---@field YawFieldID number
---@field PitchFieldID number
---@field RollFieldID number
---@field HeadYawFieldID number
---@field HeadPitchFieldID number
---@field BodyYawFieldID number
---@field MountedPositionFieldID number
---@field PositionVersionNumberFieldID number
Packet_PlayerPosition = {}

---@return Packet_PlayerPosition
function Packet_PlayerPosition.ctor() end

---@param value number
function Packet_PlayerPosition.SetEntityId(value) end

---@param value number
function Packet_PlayerPosition.SetXint(value) end

---@param value number
function Packet_PlayerPosition.SetYint(value) end

---@param value number
function Packet_PlayerPosition.SetZint(value) end

---@param value number
function Packet_PlayerPosition.SetXfrac(value) end

---@param value number
function Packet_PlayerPosition.SetYfrac(value) end

---@param value number
function Packet_PlayerPosition.SetZfrac(value) end

---@param value number
function Packet_PlayerPosition.SetYaw(value) end

---@param value number
function Packet_PlayerPosition.SetPitch(value) end

---@param value number
function Packet_PlayerPosition.SetRoll(value) end

---@param value number
function Packet_PlayerPosition.SetHeadYaw(value) end

---@param value number
function Packet_PlayerPosition.SetHeadPitch(value) end

---@param value number
function Packet_PlayerPosition.SetBodyYaw(value) end

---@param value Packet_EntityMoved
function Packet_PlayerPosition.SetMountedPosition(value) end

---@param value number
function Packet_PlayerPosition.SetPositionVersionNumber(value) end

---@return userdata
function Packet_PlayerPosition.GetType() end

---@return string
function Packet_PlayerPosition.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerPosition.Equals(obj) end

---@return number
function Packet_PlayerPosition.GetHashCode() end


