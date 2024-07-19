---@meta

---@class ItemStack:  IItemStack
---@field Collectible CollectibleObject The item/block base class this stack is holding
---@field Item Item If this is a stack of items, this is the type of items it's holding, otherwise null
---@field Block Block If this is a stack of blocks, this is the type of block it's holding, otherwise null
---@field StackSize number The amount of items/blocks in this stack
---@field Attributes ITreeAttribute Attributes assigned to this particular itemstack which are saved and synchronized. 
---@field TempAttributes ITreeAttribute Temporary Attributes assigned to this particular itemstack, not synchronized, not saved! Modifiable.
---@field ItemAttributes JsonObject The Attributes assigned to the underlying block/item. Should not be modified, as it applies to globally.
---@field Class EnumItemClass Wether its a block Block or Item
---@field Id number The id of the block or item
ItemStack = {}

---@return ItemStack
function ItemStack.ctor() end
---@param id number
---@param itemClass EnumItemClass
---@param stacksize number
---@param stackAttributes TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@param resolver IWorldAccessor Important interface to access the game world.
---@return ItemStack
function ItemStack.ctor(id, itemClass, stacksize, stackAttributes, resolver) end
---@param reader BinaryReader
---@return ItemStack
function ItemStack.ctor(reader) end
---@param data number
---@return ItemStack
function ItemStack.ctor(data) end
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
---@return ItemStack
function ItemStack.ctor(reader, resolver) end
---@param collectible CollectibleObject Contains all properties shared by Blocks and Items
---@param stacksize? number
---@return ItemStack
function ItemStack.ctor(collectible, stacksize) end
---@param item Item Represents an in game Item of Vintage Story
---@param stacksize? number
---@return ItemStack
function ItemStack.ctor(item, stacksize) end
---@param block Block Basic class for a placeable block
---@param stacksize? number
---@return ItemStack
function ItemStack.ctor(block, stacksize) end

---@return CollectibleObject # Contains all properties shared by Blocks and Items
function ItemStack.get_Collectible() end

---@return Item # Represents an in game Item of Vintage Story
function ItemStack.get_Item() end

---@return Block # Basic class for a placeable block
function ItemStack.get_Block() end

---@return number
function ItemStack.get_StackSize() end

---@param value number
function ItemStack.set_StackSize(value) end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ItemStack.get_Attributes() end

---@param value ITreeAttribute Represents a List of nestable Attributes
function ItemStack.set_Attributes(value) end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ItemStack.get_TempAttributes() end

---@param value ITreeAttribute Represents a List of nestable Attributes
function ItemStack.set_TempAttributes(value) end

---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function ItemStack.get_ItemAttributes() end

-- Returns true if both stacks exactly match
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param sourceStack ItemStack
---@param ignoreAttributeSubTrees string
---@return boolean
function ItemStack.Equals(worldForResolve, sourceStack, ignoreAttributeSubTrees) end

-- Returns true if this item stack is a satisfactory replacement for given itemstack. It's basically an Equals() test, but ignores additional attributes of the sourceStack
---@param sourceStack ItemStack
---@return boolean
function ItemStack.Satisfies(sourceStack) end

-- Replace all the properties (id, class, attributes, stacksize, etc...) from this item stack by given stack
---@param stack ItemStack
function ItemStack.SetFrom(stack) end

-- Turn the itemstack into a simple string representation
---@return string
function ItemStack.ToString() end

-- Serializes the itemstack into a series of bytes, including its stack attributes
---@return number
function ItemStack.ToBytes() end

-- Serializes the itemstack into a series of bytes, including its stack attributes
---@param stream BinaryWriter
function ItemStack.ToBytes(stream) end

-- Reads all the itemstacks properties from a series of bytes, including its stack attributes
---@param stream BinaryReader
function ItemStack.FromBytes(stream) end

-- Sets the item/block based on the currently set itemclass + id
---@param resolver IWorldAccessor Important interface to access the game world.
---@return boolean
function ItemStack.ResolveBlockOrItem(resolver) end

-- Returns true if searchText is found in the item/block name as supplied from GetName()
---@param world IWorldAccessor Important interface to access the game world.
---@param searchText string
---@return boolean
function ItemStack.MatchesSearchText(world, searchText) end

-- Returns a human readable name of the item/block
---@return string
function ItemStack.GetName() end

-- Returns a human readable description of the item/block
---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param debug? boolean
---@return string
function ItemStack.GetDescription(world, inSlot, debug) end

-- Creates a full copy of the item stack
---@return ItemStack
function ItemStack.Clone() end

-- Creates a full copy of the item stack, except for its stack size.
---@return ItemStack
function ItemStack.GetEmptyClone() end

-- This method should always be called when an itemstack got loaded from the savegame or when it got imported.
-- When this method return false, you should discard the itemstack because it could not get resolved and a warning will be logged.
---@param oldBlockMapping table
---@param oldItemMapping table
---@param worldForNewMapping IWorldAccessor Important interface to access the game world.
---@return boolean
function ItemStack.FixMapping(oldBlockMapping, oldItemMapping, worldForNewMapping) end

---@return number
function ItemStack.GetHashCode() end

---@param ignoredAttributes string
---@return number
function ItemStack.GetHashCode(ignoredAttributes) end

---@return userdata
function ItemStack.GetType() end

---@param obj userdata
---@return boolean
function ItemStack.Equals(obj) end


