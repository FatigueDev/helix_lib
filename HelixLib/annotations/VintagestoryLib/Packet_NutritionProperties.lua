---@meta

---@class Packet_NutritionProperties
---@field FoodCategory number
---@field Saturation number
---@field Health number
---@field EatenStack number
---@field FoodCategoryFieldID number
---@field SaturationFieldID number
---@field HealthFieldID number
---@field EatenStackFieldID number
Packet_NutritionProperties = {}

---@return Packet_NutritionProperties
function Packet_NutritionProperties.ctor() end

---@param value number
function Packet_NutritionProperties.SetFoodCategory(value) end

---@param value number
function Packet_NutritionProperties.SetSaturation(value) end

---@param value number
function Packet_NutritionProperties.SetHealth(value) end

---@param value number
function Packet_NutritionProperties.SetEatenStack(value) end

---@return userdata
function Packet_NutritionProperties.GetType() end

---@return string
function Packet_NutritionProperties.ToString() end

---@param obj userdata
---@return boolean
function Packet_NutritionProperties.Equals(obj) end

---@return number
function Packet_NutritionProperties.GetHashCode() end


