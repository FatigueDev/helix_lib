---@meta

---@class FoodNutritionProperties
---@field Saturation number
---@field Intoxication number
---@field FoodCategory EnumFoodCategory The category of the food.
---@field Satiety number The saturation restored by the food.
---@field SaturationLossDelay number The delay before that extra saturation starts to go away.
---@field Health number The health restored by the food.
---@field EatenStack JsonItemStack The item that was eaten.
FoodNutritionProperties = {}

---@return FoodNutritionProperties
function FoodNutritionProperties.ctor() end

---@return number
function FoodNutritionProperties.get_Saturation() end

---@param value number
function FoodNutritionProperties.set_Saturation(value) end

---@return number
function FoodNutritionProperties.get_Intoxication() end

---@param value number
function FoodNutritionProperties.set_Intoxication(value) end

-- Duplicates the nutrition properties, which includes cloning the stack that was eaten.
---@return FoodNutritionProperties
function FoodNutritionProperties.Clone() end

---@return userdata
function FoodNutritionProperties.GetType() end

---@return string
function FoodNutritionProperties.ToString() end

---@param obj userdata
---@return boolean
function FoodNutritionProperties.Equals(obj) end

---@return number
function FoodNutritionProperties.GetHashCode() end


