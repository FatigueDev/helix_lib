---@meta

---@class BlockCropProperties
---@field RequiredNutrient EnumSoilNutrient Which nutrient category this crop requires to grow
---@field NutrientConsumption number Total amount of nutrient consumed to reach full maturity. (100 is the maximum available for farmland)
---@field GrowthStages number Amount of growth stages this crop has
---@field TotalGrowthDays number Total time in ingame days required for the crop to reach full maturity assuming full nutrient levels
---@field TotalGrowthMonths number Total time in ingame months required for the crop to reach full maturity assuming full nutrient levels
---@field MultipleHarvests boolean If true, the player may harvests from the crop multiple times
---@field HarvestGrowthStageLoss number When multiple harvets is true, this is the amount of growth stages the crop should go back when harvested
---@field ColdDamageBelow number
---@field DamageGrowthStuntMul number
---@field ColdDamageRipeMul number
---@field HeatDamageAbove number
---@field Behaviors CropBehavior[] Allows customization of crop growth behavior. BlockEntityFarmland calls methods on all behaviors to allow greater control.
BlockCropProperties = {}

---@return BlockCropProperties
function BlockCropProperties.ctor() end

---@return userdata
function BlockCropProperties.GetType() end

---@return string
function BlockCropProperties.ToString() end

---@param obj userdata
---@return boolean
function BlockCropProperties.Equals(obj) end

---@return number
function BlockCropProperties.GetHashCode() end


