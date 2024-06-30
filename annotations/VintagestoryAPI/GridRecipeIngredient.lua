---@meta

---@class GridRecipeIngredient: CraftingRecipeIngredient, CraftingRecipeIngredient, IRecipeIngredient
---@field Code AssetLocation Code of the item or block
---@field Name string Name of the class, used for filling placeholders in the output stack
---@field PatternCode string
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
GridRecipeIngredient = {}

---@return GridRecipeIngredient
function GridRecipeIngredient.ctor() end

---@param writer BinaryWriter
function GridRecipeIngredient.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function GridRecipeIngredient.FromBytes(reader, resolver) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function GridRecipeIngredient.get_Code() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function GridRecipeIngredient.set_Code(value) end

---@return string
function GridRecipeIngredient.get_Name() end

---@param value string
function GridRecipeIngredient.set_Name(value) end

-- Turns Type, Code and Attributes into an IItemStack
---@param resolver IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@return boolean
function GridRecipeIngredient.Resolve(resolver, sourceForErrorLogging) end

-- Checks whether or not the input satisfies as an ingredient for the recipe.
---@param inputStack ItemStack
---@param checkStacksize? boolean
---@return boolean
function GridRecipeIngredient.SatisfiesAsIngredient(inputStack, checkStacksize) end

---@return CraftingRecipeIngredient # A crafting recipe ingredient
function GridRecipeIngredient.Clone() end

---@return T
function GridRecipeIngredient.CloneTo() end

---@return string
function GridRecipeIngredient.ToString() end

-- Fills in the placeholder ingredients for the crafting recipe.
---@param key string
---@param value string
function GridRecipeIngredient.FillPlaceHolder(key, value) end

---@return userdata
function GridRecipeIngredient.GetType() end

---@param obj userdata
---@return boolean
function GridRecipeIngredient.Equals(obj) end

---@return number
function GridRecipeIngredient.GetHashCode() end


