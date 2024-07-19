---@meta

---@class ClimateCondition
---@field Temperature number Between -20 and +40 degrees
---@field WorldgenRainfall number If you read the now values, you can still get the world gen rain fall from this value. Between 0..1
---@field WorldGenTemperature number If you read the now values, you can still get the world gen temp from this value
---@field GeologicActivity number Nomalized value between 0..1. Static value determined on world generation
---@field Rainfall number Nomalized value between 0..1. When loading the now values, this is set to the current precipitation value, otherwise to "yearly averages" or the values generated during worldgen
---@field RainCloudOverlay number
---@field Fertility number Nomalized value between 0..1
---@field ForestDensity number Nomalized value between 0..1
---@field ShrubDensity number Nomalized value between 0..1
ClimateCondition = {}

---@return ClimateCondition
function ClimateCondition.ctor() end

---@param left ClimateCondition
---@param right ClimateCondition
---@param w number
function ClimateCondition.SetLerped(left, right, w) end

---@return userdata
function ClimateCondition.GetType() end

---@return string
function ClimateCondition.ToString() end

---@param obj userdata
---@return boolean
function ClimateCondition.Equals(obj) end

---@return number
function ClimateCondition.GetHashCode() end


