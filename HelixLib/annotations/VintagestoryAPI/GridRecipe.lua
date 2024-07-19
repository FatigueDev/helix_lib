---@meta

-- Represents a crafting recipe
---@class GridRecipe:  IByteSerializable
---@field Enabled boolean Set by the recipe loader during json deserialization, if false the recipe will never be loaded. If loaded however, you can use this field to disable recipes during runtime.
---@field IngredientPattern string The pattern of the ingredient. Order for a 3x3 recipe:  1 2 3 4 5 6 7 8 9 Order for a 2x2 recipe: 1 2 3 4
---@field Ingredients table The recipes ingredients in any order
---@field Width number Required grid width for crafting this recipe 
---@field Height number Required grid height for crafting this recipe 
---@field RecipeGroup number Info used by the handbook. Allows you to split grid recipe previews into multiple.
---@field ShowInCreatedBy boolean Used by the handbook. If false, will not appear in the "Created by" section
---@field Output CraftingRecipeIngredient The resulting Stack
---@field Shapeless boolean Whether the order of input items should be respected
---@field Name AssetLocation Name of the recipe, optional
---@field Attributes JsonObject Optional attribute data that you can attach any data to
---@field RequiresTrait string If set only players with given trait can use this recipe
---@field AverageDurability boolean If true, the output item will have its durability averaged over the input items
---@field CopyAttributesFrom string If set, it will copy over the itemstack attributes from given ingredient code
---@field resolvedIngredients GridRecipeIngredient[]
GridRecipe = {}

---@return GridRecipe
function GridRecipe.ctor() end

-- Turns Ingredients into IItemStacks
---@param world IWorldAccessor Important interface to access the game world.
---@return boolean
function GridRecipe.ResolveIngredients(world) end

-- Resolves Wildcards in the ingredients
---@param world IWorldAccessor Important interface to access the game world.
---@return table
function GridRecipe.GetNameToCodeMapping(world) end

-- Puts the crafted itemstack into the output slot and 
-- consumes the required items from the input slots
---@param byPlayer IPlayer Represents a player
---@param inputSlots ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function GridRecipe.ConsumeInput(byPlayer, inputSlots, gridWidth) end

-- Check if this recipe matches given ingredients
---@param forPlayer IPlayer Represents a player
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function GridRecipe.Matches(forPlayer, ingredients, gridWidth) end

---@param colStart number
---@param rowStart number
---@param inputSlots ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function GridRecipe.MatchesAtPosition(colStart, rowStart, inputSlots, gridWidth) end

-- Returns only the first matching itemstack, there may be multiple
---@param patternCode string
---@param inputSlots ItemSlot[] The default item slot to item stacks
---@return ItemStack
function GridRecipe.GetInputStackForPatternCode(patternCode, inputSlots) end

---@param inputSlots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
function GridRecipe.GenerateOutputStack(inputSlots, outputSlot) end

---@param row number
---@param col number
---@param stacks T[]
---@param gridwidth number
---@return T
function GridRecipe.GetElementInGrid(row, col, stacks, gridwidth) end

---@param row number
---@param col number
---@param stacks T[]
---@param gridwidth number
---@return number
function GridRecipe.GetGridIndex(row, col, stacks, gridwidth) end

-- Serialized the recipe
---@param writer BinaryWriter
function GridRecipe.ToBytes(writer) end

-- Deserializes the recipe
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function GridRecipe.FromBytes(reader, resolver) end

-- Creates a deep copy
---@return GridRecipe # Represents a crafting recipe
function GridRecipe.Clone() end

---@return userdata
function GridRecipe.GetType() end

---@return string
function GridRecipe.ToString() end

---@param obj userdata
---@return boolean
function GridRecipe.Equals(obj) end

---@return number
function GridRecipe.GetHashCode() end


