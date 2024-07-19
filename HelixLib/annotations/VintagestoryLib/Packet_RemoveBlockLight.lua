---@meta

---@class Packet_RemoveBlockLight
---@field PosX number
---@field PosY number
---@field PosZ number
---@field LightH number
---@field LightS number
---@field LightV number
---@field PosXFieldID number
---@field PosYFieldID number
---@field PosZFieldID number
---@field LightHFieldID number
---@field LightSFieldID number
---@field LightVFieldID number
Packet_RemoveBlockLight = {}

---@return Packet_RemoveBlockLight
function Packet_RemoveBlockLight.ctor() end

---@param value number
function Packet_RemoveBlockLight.SetPosX(value) end

---@param value number
function Packet_RemoveBlockLight.SetPosY(value) end

---@param value number
function Packet_RemoveBlockLight.SetPosZ(value) end

---@param value number
function Packet_RemoveBlockLight.SetLightH(value) end

---@param value number
function Packet_RemoveBlockLight.SetLightS(value) end

---@param value number
function Packet_RemoveBlockLight.SetLightV(value) end

---@return userdata
function Packet_RemoveBlockLight.GetType() end

---@return string
function Packet_RemoveBlockLight.ToString() end

---@param obj userdata
---@return boolean
function Packet_RemoveBlockLight.Equals(obj) end

---@return number
function Packet_RemoveBlockLight.GetHashCode() end


