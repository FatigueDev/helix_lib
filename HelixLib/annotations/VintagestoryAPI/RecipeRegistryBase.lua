---@meta

---@class RecipeRegistryBase
RecipeRegistryBase = {}


---@param resolver IWorldAccessor Important interface to access the game world.
---@param data number
---@param quantity number
function RecipeRegistryBase.ToBytes(resolver, data, quantity) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param quantity number
---@param data number
function RecipeRegistryBase.FromBytes(resolver, quantity, data) end

---@return userdata
function RecipeRegistryBase.GetType() end

---@return string
function RecipeRegistryBase.ToString() end

---@param obj userdata
---@return boolean
function RecipeRegistryBase.Equals(obj) end

---@return number
function RecipeRegistryBase.GetHashCode() end


