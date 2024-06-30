---@meta

---@class RecipeRegistryGeneric`1: RecipeRegistryBase, RecipeRegistryBase
---@field Recipes table
RecipeRegistryGeneric`1 = {}

---@return RecipeRegistryGeneric`1
function RecipeRegistryGeneric`1.ctor() end
---@param recipes table
---@return RecipeRegistryGeneric`1
function RecipeRegistryGeneric`1.ctor(recipes) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param quantity number
---@param data number
function RecipeRegistryGeneric`1.FromBytes(resolver, quantity, data) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param data number
---@param quantity number
function RecipeRegistryGeneric`1.ToBytes(resolver, data, quantity) end

---@return userdata
function RecipeRegistryGeneric`1.GetType() end

---@return string
function RecipeRegistryGeneric`1.ToString() end

---@param obj userdata
---@return boolean
function RecipeRegistryGeneric`1.Equals(obj) end

---@return number
function RecipeRegistryGeneric`1.GetHashCode() end


