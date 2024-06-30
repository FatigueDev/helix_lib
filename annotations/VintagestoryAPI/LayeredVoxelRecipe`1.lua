---@meta

---@class LayeredVoxelRecipe`1: RecipeBase`1
---@field QuantityLayers number
---@field RecipeCategoryCode string
---@field Ingredient CraftingRecipeIngredient
---@field Name AssetLocation
---@field Enabled boolean
---@field Pattern string
---@field Voxels boolean
---@field RecipeId number
---@field Ingredients CraftingRecipeIngredient[] ...or alternatively for recipes with multiple ingredients
---@field Output JsonItemStack
LayeredVoxelRecipe`1 = {}

---@return LayeredVoxelRecipe`1
function LayeredVoxelRecipe`1.ctor() end

---@return number
function LayeredVoxelRecipe`1.get_QuantityLayers() end

---@return string
function LayeredVoxelRecipe`1.get_RecipeCategoryCode() end

-- Resolves the recipe.
---@param world IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@return boolean
function LayeredVoxelRecipe`1.Resolve(world, sourceForErrorLogging) end

-- Generates the voxels for the recipe.
function LayeredVoxelRecipe`1.GenVoxels() end

-- Serialized the recipe
---@param writer BinaryWriter
function LayeredVoxelRecipe`1.ToBytes(writer) end

-- Deserializes the alloy
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function LayeredVoxelRecipe`1.FromBytes(reader, resolver) end

-- Resolves Wildcards in the ingredients
---@param world IWorldAccessor Important interface to access the game world.
---@return table
function LayeredVoxelRecipe`1.GetNameToCodeMapping(world) end

-- Matches the wildcards for the clay recipe.
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@param blockCode AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function LayeredVoxelRecipe`1.WildCardMatch(wildCard, blockCode) end

---@return CraftingRecipeIngredient # A crafting recipe ingredient
function LayeredVoxelRecipe`1.get_Ingredient() end

---@param value CraftingRecipeIngredient A crafting recipe ingredient
function LayeredVoxelRecipe`1.set_Ingredient(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function LayeredVoxelRecipe`1.get_Name() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function LayeredVoxelRecipe`1.set_Name(value) end

---@return boolean
function LayeredVoxelRecipe`1.get_Enabled() end

---@param value boolean
function LayeredVoxelRecipe`1.set_Enabled(value) end

---@return T
function LayeredVoxelRecipe`1.Clone() end

---@return userdata
function LayeredVoxelRecipe`1.GetType() end

---@return string
function LayeredVoxelRecipe`1.ToString() end

---@param obj userdata
---@return boolean
function LayeredVoxelRecipe`1.Equals(obj) end

---@return number
function LayeredVoxelRecipe`1.GetHashCode() end


