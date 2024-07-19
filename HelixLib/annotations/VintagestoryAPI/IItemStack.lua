---@meta

-- Represents a stack of items or blocks
---@class IItemStack
---@field Collectible CollectibleObject The base class the Item/Block inherits from
---@field Class EnumItemClass Is it a Block or Item?
---@field Item Item The Item if ItemClass==Item, otherwise null
---@field Block Block The Block if ItemClass==Block, otherwise null
---@field StackSize number Amount of items or blocks in this stack
---@field Id number The items or blocks unique id
---@field Attributes ITreeAttribute Attributes assigned to this itemstack. Modifiable.
IItemStack = {}


---@return CollectibleObject # Contains all properties shared by Blocks and Items
function IItemStack.get_Collectible() end

---@return EnumItemClass
function IItemStack.get_Class() end

---@return Item # Represents an in game Item of Vintage Story
function IItemStack.get_Item() end

---@return Block # Basic class for a placeable block
function IItemStack.get_Block() end

---@return number
function IItemStack.get_StackSize() end

---@param value number
function IItemStack.set_StackSize(value) end

---@return number
function IItemStack.get_Id() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function IItemStack.get_Attributes() end

---@param value ITreeAttribute Represents a List of nestable Attributes
function IItemStack.set_Attributes(value) end

-- Checks if this item stack is of the same class, id and has the same stack attributes. Ignores stack size
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param sourceStack ItemStack
---@param ignoreAttributeSubTrees string
---@return boolean
function IItemStack.Equals(worldForResolve, sourceStack, ignoreAttributeSubTrees) end

-- Serializes this itemstack into a byte stream
---@param stream BinaryWriter
function IItemStack.ToBytes(stream) end

-- Deserializes an itemstack from given byte stream
---@param stream BinaryReader
function IItemStack.FromBytes(stream) end

-- Checks if the contained item or block name contains given searchtext
---@param world IWorldAccessor Important interface to access the game world.
---@param searchText string
---@return boolean
function IItemStack.MatchesSearchText(world, searchText) end

-- Returns the name displayed in the players inventory
---@return string
function IItemStack.GetName() end

-- Returns a multiline description text of the item
---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param debug? boolean
---@return string
function IItemStack.GetDescription(world, inSlot, debug) end

-- Creates a deep copy of the itemstack
---@return ItemStack
function IItemStack.Clone() end


