---@meta

---@class IRecipeBase`1
---@field Name AssetLocation
---@field Enabled boolean
---@field Ingredients IRecipeIngredient[]
---@field Output IRecipeOutput
IRecipeBase`1 = {}


---@return AssetLocation # Defines a complete path to an assets, including it's domain
function IRecipeBase`1.get_Name() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function IRecipeBase`1.set_Name(value) end

---@return boolean
function IRecipeBase`1.get_Enabled() end

---@param value boolean
function IRecipeBase`1.set_Enabled(value) end

---@param world IWorldAccessor Important interface to access the game world.
---@return table
function IRecipeBase`1.GetNameToCodeMapping(world) end

---@param world IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@return boolean
function IRecipeBase`1.Resolve(world, sourceForErrorLogging) end

---@return T
function IRecipeBase`1.Clone() end

---@return IRecipeIngredient[]
function IRecipeBase`1.get_Ingredients() end

---@return IRecipeOutput
function IRecipeBase`1.get_Output() end


