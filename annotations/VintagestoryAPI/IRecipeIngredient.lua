---@meta

---@class IRecipeIngredient
---@field Name string
---@field Code AssetLocation
IRecipeIngredient = {}


---@return string
function IRecipeIngredient.get_Name() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function IRecipeIngredient.set_Code(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function IRecipeIngredient.get_Code() end


