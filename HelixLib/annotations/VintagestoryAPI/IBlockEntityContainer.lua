---@meta

---@class IBlockEntityContainer
---@field Inventory IInventory The inventory attached to this block entity container
---@field InventoryClassName string The class name for the inventory.
IBlockEntityContainer = {}


---@return IInventory # Basic interface representing an item inventory
function IBlockEntityContainer.get_Inventory() end

---@return string
function IBlockEntityContainer.get_InventoryClassName() end

-- Called by EntityBlockFalling if required
---@param atPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IBlockEntityContainer.DropContents(atPos) end


