---@meta

---@class Packet_WorldMetaData
---@field SunBrightness number
---@field BlockLightlevels number
---@field BlockLightlevelsCount number
---@field BlockLightlevelsLength number
---@field SunLightlevels number
---@field SunLightlevelsCount number
---@field SunLightlevelsLength number
---@field WorldConfiguration number
---@field SeaLevel number
---@field SunBrightnessFieldID number
---@field BlockLightlevelsFieldID number
---@field SunLightlevelsFieldID number
---@field WorldConfigurationFieldID number
---@field SeaLevelFieldID number
Packet_WorldMetaData = {}

---@return Packet_WorldMetaData
function Packet_WorldMetaData.ctor() end

---@param value number
function Packet_WorldMetaData.SetSunBrightness(value) end

---@return number
function Packet_WorldMetaData.GetBlockLightlevels() end

---@param value number
---@param count number
---@param length number
function Packet_WorldMetaData.SetBlockLightlevels(value, count, length) end

---@param value number
function Packet_WorldMetaData.SetBlockLightlevels(value) end

---@return number
function Packet_WorldMetaData.GetBlockLightlevelsCount() end

---@param value number
function Packet_WorldMetaData.BlockLightlevelsAdd(value) end

---@return number
function Packet_WorldMetaData.GetSunLightlevels() end

---@param value number
---@param count number
---@param length number
function Packet_WorldMetaData.SetSunLightlevels(value, count, length) end

---@param value number
function Packet_WorldMetaData.SetSunLightlevels(value) end

---@return number
function Packet_WorldMetaData.GetSunLightlevelsCount() end

---@param value number
function Packet_WorldMetaData.SunLightlevelsAdd(value) end

---@param value number
function Packet_WorldMetaData.SetWorldConfiguration(value) end

---@param value number
function Packet_WorldMetaData.SetSeaLevel(value) end

---@return userdata
function Packet_WorldMetaData.GetType() end

---@return string
function Packet_WorldMetaData.ToString() end

---@param obj userdata
---@return boolean
function Packet_WorldMetaData.Equals(obj) end

---@return number
function Packet_WorldMetaData.GetHashCode() end


