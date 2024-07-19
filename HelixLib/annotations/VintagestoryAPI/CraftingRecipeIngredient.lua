---@meta

-- A crafting recipe ingredient
---@class CraftingRecipeIngredient:  IRecipeIngredient
---@field Code AssetLocation Code of the item or block
---@field Name string Name of the class, used for filling placeholders in the output stack
---@field Type EnumItemClass Item or Block
---@field Quantity number How much input items are required
---@field Attributes JsonObject What attributes this itemstack must have
---@field RecipeAttributes JsonObject Optional attribute data that you can attach any data to
---@field IsTool boolean Whether this crafting recipe ingredient should be regarded as a tool required to build this item. If true, the recipe will not consume the item but reduce its durability.
---@field ToolDurabilityCost number If IsTool is set, this is the durability cost
---@field AllowedVariants string When using a wildcard in the item/block code, setting this field will limit the allowed variants
---@field SkipVariants string When using a wildcard in the item/block code, setting this field will skip these variants
---@field ReturnedStack JsonItemStack If set, the crafting recipe will give back the consumed stack to be player upon crafting
---@field ResolvedItemstack ItemStack The itemstack made from Code, Quantity and Attributes, populated by the engine
---@field IsWildCard boolean Whether this recipe contains a wildcard, populated by the engine
CraftingRecipeIngredient = {}

---@return CraftingRecipeIngredient
function CraftingRecipeIngredient.ctor() end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function CraftingRecipeIngredient.get_Code() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function CraftingRecipeIngredient.set_Code(value) end

---@return string
function CraftingRecipeIngredient.get_Name() end

---@param value string
function CraftingRecipeIngredient.set_Name(value) end

-- Turns Type, Code and Attributes into an IItemStack
---@param resolver IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@return boolean
function CraftingRecipeIngredient.Resolve(resolver, sourceForErrorLogging) end

-- Checks whether or not the input satisfies as an ingredient for the recipe.
---@param inputStack ItemStack
---@param checkStacksize? boolean
---@return boolean
function CraftingRecipeIngredient.SatisfiesAsIngredient(inputStack, checkStacksize) end

---@return CraftingRecipeIngredient # A crafting recipe ingredient
function CraftingRecipeIngredient.Clone() end

---@return T
function CraftingRecipeIngredient.CloneTo() end

---@return string
function CraftingRecipeIngredient.ToString() end

-- Fills in the placeholder ingredients for the crafting recipe.
---@param key string
---@param value string
function CraftingRecipeIngredient.FillPlaceHolder(key, value) end

---@param writer BinaryWriter
function CraftingRecipeIngredient.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function CraftingRecipeIngredient.FromBytes(reader, resolver) end

---@return userdata
function CraftingRecipeIngredient.GetType() end

---@param obj userdata
---@return boolean
function CraftingRecipeIngredient.Equals(obj) end

---@return number
function CraftingRecipeIngredient.GetHashCode() end


