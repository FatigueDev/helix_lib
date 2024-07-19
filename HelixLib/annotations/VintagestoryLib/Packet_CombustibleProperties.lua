---@meta

---@class Packet_CombustibleProperties
---@field BurnTemperature number
---@field BurnDuration number
---@field HeatResistance number
---@field MeltingPoint number
---@field MeltingDuration number
---@field SmeltedStack number
---@field SmeltedRatio number
---@field RequiresContainer number
---@field MeltingType number
---@field MaxTemperature number
---@field BurnTemperatureFieldID number
---@field BurnDurationFieldID number
---@field HeatResistanceFieldID number
---@field MeltingPointFieldID number
---@field MeltingDurationFieldID number
---@field SmeltedStackFieldID number
---@field SmeltedRatioFieldID number
---@field RequiresContainerFieldID number
---@field MeltingTypeFieldID number
---@field MaxTemperatureFieldID number
Packet_CombustibleProperties = {}

---@return Packet_CombustibleProperties
function Packet_CombustibleProperties.ctor() end

---@param value number
function Packet_CombustibleProperties.SetBurnTemperature(value) end

---@param value number
function Packet_CombustibleProperties.SetBurnDuration(value) end

---@param value number
function Packet_CombustibleProperties.SetHeatResistance(value) end

---@param value number
function Packet_CombustibleProperties.SetMeltingPoint(value) end

---@param value number
function Packet_CombustibleProperties.SetMeltingDuration(value) end

---@param value number
function Packet_CombustibleProperties.SetSmeltedStack(value) end

---@param value number
function Packet_CombustibleProperties.SetSmeltedRatio(value) end

---@param value number
function Packet_CombustibleProperties.SetRequiresContainer(value) end

---@param value number
function Packet_CombustibleProperties.SetMeltingType(value) end

---@param value number
function Packet_CombustibleProperties.SetMaxTemperature(value) end

---@return userdata
function Packet_CombustibleProperties.GetType() end

---@return string
function Packet_CombustibleProperties.ToString() end

---@param obj userdata
---@return boolean
function Packet_CombustibleProperties.Equals(obj) end

---@return number
function Packet_CombustibleProperties.GetHashCode() end


