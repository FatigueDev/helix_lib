---@meta

---@class Packet_EntityMovedMinimal
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
Packet_EntityMovedMinimal = {}

---@return Packet_EntityMovedMinimal
function Packet_EntityMovedMinimal.ctor() end

---@param value number
function Packet_EntityMovedMinimal.SetEntityId(value) end

---@param value number
function Packet_EntityMovedMinimal.SetXint(value) end

---@param value number
function Packet_EntityMovedMinimal.SetYint(value) end

---@param value number
function Packet_EntityMovedMinimal.SetZint(value) end

---@param value number
function Packet_EntityMovedMinimal.SetXfrac(value) end

---@param value number
function Packet_EntityMovedMinimal.SetYfrac(value) end

---@param value number
function Packet_EntityMovedMinimal.SetZfrac(value) end

---@param value number
function Packet_EntityMovedMinimal.SetYaw(value) end

---@param value number
function Packet_EntityMovedMinimal.SetPitch(value) end

---@param value number
function Packet_EntityMovedMinimal.SetRoll(value) end

---@return userdata
function Packet_EntityMovedMinimal.GetType() end

---@return string
function Packet_EntityMovedMinimal.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityMovedMinimal.Equals(obj) end

---@return number
function Packet_EntityMovedMinimal.GetHashCode() end


