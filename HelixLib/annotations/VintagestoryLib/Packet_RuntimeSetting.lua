---@meta

---@class Packet_RuntimeSetting
---@field ImmersiveFpMode number
---@field ItemCollectMode number
---@field ImmersiveFpModeFieldID number
---@field ItemCollectModeFieldID number
Packet_RuntimeSetting = {}

---@return Packet_RuntimeSetting
function Packet_RuntimeSetting.ctor() end

---@param value number
function Packet_RuntimeSetting.SetImmersiveFpMode(value) end

---@param value number
function Packet_RuntimeSetting.SetItemCollectMode(value) end

---@return userdata
function Packet_RuntimeSetting.GetType() end

---@return string
function Packet_RuntimeSetting.ToString() end

---@param obj userdata
---@return boolean
function Packet_RuntimeSetting.Equals(obj) end

---@return number
function Packet_RuntimeSetting.GetHashCode() end


