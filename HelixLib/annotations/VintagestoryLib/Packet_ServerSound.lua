---@meta

---@class Packet_ServerSound
---@field Name string
---@field X number
---@field Y number
---@field Z number
---@field Pitch number
---@field Range number
---@field Volume number
---@field SoundType number
---@field NameFieldID number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field PitchFieldID number
---@field RangeFieldID number
---@field VolumeFieldID number
---@field SoundTypeFieldID number
Packet_ServerSound = {}

---@return Packet_ServerSound
function Packet_ServerSound.ctor() end

---@param value string
function Packet_ServerSound.SetName(value) end

---@param value number
function Packet_ServerSound.SetX(value) end

---@param value number
function Packet_ServerSound.SetY(value) end

---@param value number
function Packet_ServerSound.SetZ(value) end

---@param value number
function Packet_ServerSound.SetPitch(value) end

---@param value number
function Packet_ServerSound.SetRange(value) end

---@param value number
function Packet_ServerSound.SetVolume(value) end

---@param value number
function Packet_ServerSound.SetSoundType(value) end

---@return userdata
function Packet_ServerSound.GetType() end

---@return string
function Packet_ServerSound.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSound.Equals(obj) end

---@return number
function Packet_ServerSound.GetHashCode() end


