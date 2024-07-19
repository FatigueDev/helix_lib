---@meta

---@class GridRecipeAndUnnamedIngredients
---@field Recipe GridRecipe
---@field unnamedIngredients table
GridRecipeAndUnnamedIngredients = {}

---@return GridRecipeAndUnnamedIngredients
function GridRecipeAndUnnamedIngredients.ctor() end

---@return userdata
function GridRecipeAndUnnamedIngredients.GetType() end

---@return string
function GridRecipeAndUnnamedIngredients.ToString() end

---@param obj userdata
---@return boolean
function GridRecipeAndUnnamedIngredients.Equals(obj) end

---@return number
function GridRecipeAndUnnamedIngredients.GetHashCode() end


