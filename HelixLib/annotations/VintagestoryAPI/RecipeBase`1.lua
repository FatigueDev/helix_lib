---@meta

-- Creates a new base recipe type.  
---@class RecipeBase`1
---@field Ingredient CraftingRecipeIngredient
---@field Name AssetLocation
---@field Enabled boolean
---@field RecipeId number
---@field Ingredients CraftingRecipeIngredient[] ...or alternatively for recipes with multiple ingredients
---@field Output JsonItemStack
RecipeBase`1 = {}


---@return CraftingRecipeIngredient # A crafting recipe ingredient
function RecipeBase`1.get_Ingredient() end

---@param value CraftingRecipeIngredient A crafting recipe ingredient
function RecipeBase`1.set_Ingredient(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RecipeBase`1.get_Name() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function RecipeBase`1.set_Name(value) end

---@return boolean
function RecipeBase`1.get_Enabled() end

---@param value boolean
function RecipeBase`1.set_Enabled(value) end

---@return T
function RecipeBase`1.Clone() end

---@param world IWorldAccessor Important interface to access the game world.
---@return table
function RecipeBase`1.GetNameToCodeMapping(world) end

---@param world IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@return boolean
function RecipeBase`1.Resolve(world, sourceForErrorLogging) end

---@return userdata
function RecipeBase`1.GetType() end

---@return string
function RecipeBase`1.ToString() end

---@param obj userdata
---@return boolean
function RecipeBase`1.Equals(obj) end

---@return number
function RecipeBase`1.GetHashCode() end


