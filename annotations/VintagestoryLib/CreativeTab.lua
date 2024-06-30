---@meta

---@class CreativeTab
---@field Inventory IInventory
---@field Code string
---@field SearchCache table
---@field SearchCacheNames table
---@field Index number
CreativeTab = {}

---@param code string
---@param inventory IInventory Basic interface representing an item inventory
---@return CreativeTab
function CreativeTab.ctor(code, inventory) end

---@return IInventory # Basic interface representing an item inventory
function CreativeTab.get_Inventory() end

---@param value IInventory Basic interface representing an item inventory
function CreativeTab.set_Inventory(value) end

---@return string
function CreativeTab.get_Code() end

---@param value string
function CreativeTab.set_Code(value) end

---@return table
function CreativeTab.get_SearchCache() end

---@param value table
function CreativeTab.set_SearchCache(value) end

---@return table
function CreativeTab.get_SearchCacheNames() end

---@param value table
function CreativeTab.set_SearchCacheNames(value) end

---@return number
function CreativeTab.get_Index() end

---@param value number
function CreativeTab.set_Index(value) end

---@param world IWorldAccessor Important interface to access the game world.
---@return table
function CreativeTab.CreateSearchCache(world) end

---@return userdata
function CreativeTab.GetType() end

---@return string
function CreativeTab.ToString() end

---@param obj userdata
---@return boolean
function CreativeTab.Equals(obj) end

---@return number
function CreativeTab.GetHashCode() end


