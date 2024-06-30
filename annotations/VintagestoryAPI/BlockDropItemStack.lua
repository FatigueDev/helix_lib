---@meta

-- Represents an itemstack that is dropped by chance when breaking a block
---@class BlockDropItemStack
---@field Type EnumItemClass Block or Item?
---@field Code AssetLocation Code of the block or item
---@field Quantity NatFloat Quantity to be dropped
---@field Attributes JsonObject Tree Attributes that should be attached to the resulting itemstack
---@field LastDrop boolean If true and the quantity dropped is >=1 any subsequent drop will be ignored
---@field Tool Nullable`1 If not null then given tool is required to break this block
---@field ResolvedItemstack ItemStack The resulting ItemStack for this block being broken by a tool.
---@field DropModbyStat string If set, the drop quantity will be modified by the collecting entity stat code - entity.Stats.GetBlended(code)
BlockDropItemStack = {}

---@return BlockDropItemStack
function BlockDropItemStack.ctor() end
---@param stack ItemStack
---@param chance? number
---@return BlockDropItemStack
function BlockDropItemStack.ctor(stack, chance) end

-- Sets itemstack.block or itemstack.item
---@param resolver IWorldAccessor Important interface to access the game world.
---@param sourceForErrorLogging string
---@param assetLoc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function BlockDropItemStack.Resolve(resolver, sourceForErrorLogging, assetLoc) end

-- Returns an itemstack with random quantity as configured via the Quantity field
---@param dropQuantityMultiplier? number
---@return ItemStack
function BlockDropItemStack.GetNextItemStack(dropQuantityMultiplier) end

-- Creates a deep copy of this object
---@return BlockDropItemStack # Represents an itemstack that is dropped by chance when breaking a block
function BlockDropItemStack.Clone() end

-- Reads the contents of the block bytes and converts it into a block.
---@param reader BinaryReader
---@param instancer IClassRegistryAPI Interface for creating instances
function BlockDropItemStack.FromBytes(reader, instancer) end

-- The save data writer.
---@param writer BinaryWriter
function BlockDropItemStack.ToBytes(writer) end

---@return userdata
function BlockDropItemStack.GetType() end

---@return string
function BlockDropItemStack.ToString() end

---@param obj userdata
---@return boolean
function BlockDropItemStack.Equals(obj) end

---@return number
function BlockDropItemStack.GetHashCode() end


