---@meta

---@class Packet_EntityPosition
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
Packet_EntityPosition = {}

---@return Packet_EntityPosition
function Packet_EntityPosition.ctor() end

---@param value number
function Packet_EntityPosition.SetXint(value) end

---@param value number
function Packet_EntityPosition.SetYint(value) end

---@param value number
function Packet_EntityPosition.SetZint(value) end

---@param value number
function Packet_EntityPosition.SetXfrac(value) end

---@param value number
function Packet_EntityPosition.SetYfrac(value) end

---@param value number
function Packet_EntityPosition.SetZfrac(value) end

---@param value number
function Packet_EntityPosition.SetYaw(value) end

---@param value number
function Packet_EntityPosition.SetPitch(value) end

---@param value number
function Packet_EntityPosition.SetRoll(value) end

---@param value number
function Packet_EntityPosition.SetHeadYaw(value) end

---@param value number
function Packet_EntityPosition.SetHeadPitch(value) end

---@param value number
function Packet_EntityPosition.SetBodyYaw(value) end

---@return userdata
function Packet_EntityPosition.GetType() end

---@return string
function Packet_EntityPosition.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityPosition.Equals(obj) end

---@return number
function Packet_EntityPosition.GetHashCode() end


