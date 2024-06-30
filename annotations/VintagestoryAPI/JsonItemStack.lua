---@meta

---@class JsonItemStack:  IRecipeOutput
---@field Quantity number Alias of StackSize
---@field Type EnumItemClass Block or Item?
---@field Code AssetLocation Code of the block or item
---@field StackSize number Amount of items in this stacks
---@field Attributes JsonObject Tree Attributes that should be attached to the resulting itemstack
---@field ResolvedItemstack ItemStack The resolved item after conversion.
JsonItemStack = {}

---@return JsonItemStack
function JsonItemStack.ctor() end

---@return number
function JsonItemStack.get_Quantity() end

---@param value number
function JsonItemStack.set_Quantity(value) end

---@param jsonItemstack string
---@return JsonItemStack
function JsonItemStack.FromString(jsonItemstack) end

-- Sets itemstack.block or itemstack.item
---@param resolver IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@param assetLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param printWarningOnError? boolean
---@return boolean
function JsonItemStack.Resolve(resolver, sourceForErrorLogging, assetLoc, printWarningOnError) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@param printWarningOnError? boolean
---@return boolean
function JsonItemStack.Resolve(resolver, sourceForErrorLogging, printWarningOnError) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param inputStack ItemStack
---@return boolean
function JsonItemStack.Matches(worldForResolve, inputStack) end

-- Creates a deep copy of this object
---@return JsonItemStack
function JsonItemStack.Clone() end

-- Loads the ItemStack from the reader.
---@param reader BinaryReader
---@param instancer IClassRegistryAPI Interface for creating instances
function JsonItemStack.FromBytes(reader, instancer) end

-- Saves the ItemStack to file.
---@param writer BinaryWriter
function JsonItemStack.ToBytes(writer) end

---@param key string
---@param value string
function JsonItemStack.FillPlaceHolder(key, value) end

---@return userdata
function JsonItemStack.GetType() end

---@return string
function JsonItemStack.ToString() end

---@param obj userdata
---@return boolean
function JsonItemStack.Equals(obj) end

---@return number
function JsonItemStack.GetHashCode() end


