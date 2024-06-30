---@meta

---@class Packet_ServerAssets
---@field Blocks Packet_BlockType[]
---@field BlocksCount number
---@field BlocksLength number
---@field Items Packet_ItemType[]
---@field ItemsCount number
---@field ItemsLength number
---@field Entities Packet_EntityType[]
---@field EntitiesCount number
---@field EntitiesLength number
---@field Recipes Packet_Recipes[]
---@field RecipesCount number
---@field RecipesLength number
---@field BlocksFieldID number
---@field ItemsFieldID number
---@field EntitiesFieldID number
---@field RecipesFieldID number
Packet_ServerAssets = {}

---@return Packet_ServerAssets
function Packet_ServerAssets.ctor() end

---@return Packet_BlockType[]
function Packet_ServerAssets.GetBlocks() end

---@param value Packet_BlockType[]
---@param count number
---@param length number
function Packet_ServerAssets.SetBlocks(value, count, length) end

---@param value Packet_BlockType[]
function Packet_ServerAssets.SetBlocks(value) end

---@return number
function Packet_ServerAssets.GetBlocksCount() end

---@param value Packet_BlockType
function Packet_ServerAssets.BlocksAdd(value) end

---@return Packet_ItemType[]
function Packet_ServerAssets.GetItems() end

---@param value Packet_ItemType[]
---@param count number
---@param length number
function Packet_ServerAssets.SetItems(value, count, length) end

---@param value Packet_ItemType[]
function Packet_ServerAssets.SetItems(value) end

---@return number
function Packet_ServerAssets.GetItemsCount() end

---@param value Packet_ItemType
function Packet_ServerAssets.ItemsAdd(value) end

---@return Packet_EntityType[]
function Packet_ServerAssets.GetEntities() end

---@param value Packet_EntityType[]
---@param count number
---@param length number
function Packet_ServerAssets.SetEntities(value, count, length) end

---@param value Packet_EntityType[]
function Packet_ServerAssets.SetEntities(value) end

---@return number
function Packet_ServerAssets.GetEntitiesCount() end

---@param value Packet_EntityType
function Packet_ServerAssets.EntitiesAdd(value) end

---@return Packet_Recipes[]
function Packet_ServerAssets.GetRecipes() end

---@param value Packet_Recipes[]
---@param count number
---@param length number
function Packet_ServerAssets.SetRecipes(value, count, length) end

---@param value Packet_Recipes[]
function Packet_ServerAssets.SetRecipes(value) end

---@return number
function Packet_ServerAssets.GetRecipesCount() end

---@param value Packet_Recipes
function Packet_ServerAssets.RecipesAdd(value) end

---@return userdata
function Packet_ServerAssets.GetType() end

---@return string
function Packet_ServerAssets.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerAssets.Equals(obj) end

---@return number
function Packet_ServerAssets.GetHashCode() end


