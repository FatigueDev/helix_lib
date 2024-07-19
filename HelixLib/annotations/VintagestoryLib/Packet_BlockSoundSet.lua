---@meta

---@class Packet_BlockSoundSet
---@field Walk string
---@field Break string
---@field Place string
---@field Hit string
---@field Inside string
---@field Ambient string
---@field AmbientBlockCount number
---@field ByToolTool number
---@field ByToolToolCount number
---@field ByToolToolLength number
---@field ByToolSound Packet_BlockSoundSet[]
---@field ByToolSoundCount number
---@field ByToolSoundLength number
---@field WalkFieldID number
---@field BreakFieldID number
---@field PlaceFieldID number
---@field HitFieldID number
---@field InsideFieldID number
---@field AmbientFieldID number
---@field AmbientBlockCountFieldID number
---@field ByToolToolFieldID number
---@field ByToolSoundFieldID number
Packet_BlockSoundSet = {}

---@return Packet_BlockSoundSet
function Packet_BlockSoundSet.ctor() end

---@param value string
function Packet_BlockSoundSet.SetWalk(value) end

---@param value string
function Packet_BlockSoundSet.SetBreak(value) end

---@param value string
function Packet_BlockSoundSet.SetPlace(value) end

---@param value string
function Packet_BlockSoundSet.SetHit(value) end

---@param value string
function Packet_BlockSoundSet.SetInside(value) end

---@param value string
function Packet_BlockSoundSet.SetAmbient(value) end

---@param value number
function Packet_BlockSoundSet.SetAmbientBlockCount(value) end

---@return number
function Packet_BlockSoundSet.GetByToolTool() end

---@param value number
---@param count number
---@param length number
function Packet_BlockSoundSet.SetByToolTool(value, count, length) end

---@param value number
function Packet_BlockSoundSet.SetByToolTool(value) end

---@return number
function Packet_BlockSoundSet.GetByToolToolCount() end

---@param value number
function Packet_BlockSoundSet.ByToolToolAdd(value) end

---@return Packet_BlockSoundSet[]
function Packet_BlockSoundSet.GetByToolSound() end

---@param value Packet_BlockSoundSet[]
---@param count number
---@param length number
function Packet_BlockSoundSet.SetByToolSound(value, count, length) end

---@param value Packet_BlockSoundSet[]
function Packet_BlockSoundSet.SetByToolSound(value) end

---@return number
function Packet_BlockSoundSet.GetByToolSoundCount() end

---@param value Packet_BlockSoundSet
function Packet_BlockSoundSet.ByToolSoundAdd(value) end

---@return userdata
function Packet_BlockSoundSet.GetType() end

---@return string
function Packet_BlockSoundSet.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockSoundSet.Equals(obj) end

---@return number
function Packet_BlockSoundSet.GetHashCode() end


