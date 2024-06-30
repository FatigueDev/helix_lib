---@meta

-- Interface for creating instances
---@class IClassRegistryAPI
---@field BlockClassToTypeMapping table
---@field ItemClassToTypeMapping table
IClassRegistryAPI = {}


---@return table
function IClassRegistryAPI.get_BlockClassToTypeMapping() end

---@return table
function IClassRegistryAPI.get_ItemClassToTypeMapping() end

---@param blockBehaviorType userdata
---@return string
function IClassRegistryAPI.GetBlockBehaviorClassName(blockBehaviorType) end

---@param blockBehaviorType userdata
---@return string
function IClassRegistryAPI.GetCollectibleBehaviorClassName(blockBehaviorType) end

-- Creates a block instance from given block class 
---@param blockclass string
---@return Block # Basic class for a placeable block
function IClassRegistryAPI.CreateBlock(blockclass) end

-- Returns the type of the registered block class or null otherwise
---@param blockclass string
---@return userdata
function IClassRegistryAPI.GetBlockClass(blockclass) end

-- Creates a block entity instance from given block entity class 
---@param blockEntityClass string
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IClassRegistryAPI.CreateBlockEntity(blockEntityClass) end

-- Creates a entity instance from given entity class 
---@param entityClass string
---@return Entity # The basic class for all entities in the game
function IClassRegistryAPI.CreateEntity(entityClass) end

-- Creates a entity instance from given entity type 
---@param entityType EntityProperties
---@return Entity # The basic class for all entities in the game
function IClassRegistryAPI.CreateEntity(entityType) end

-- Creates an instance of a mountable that has been registered with api.RegisterMountable
---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return IMountable
function IClassRegistryAPI.CreateMountable(tree) end

-- Creates a block behavior instance from given behavior code
---@param forBlock Block Basic class for a placeable block
---@param code string
---@return BlockBehavior # Allows for definitions of behaviors of a block that can be applied to any block
function IClassRegistryAPI.CreateBlockBehavior(forBlock, code) end

-- Creates a collectible behavior instance from given behavior code
---@param forCollectible CollectibleObject Contains all properties shared by Blocks and Items
---@param code string
---@return CollectibleBehavior
function IClassRegistryAPI.CreateCollectibleBehavior(forCollectible, code) end

-- Returns the block entity behavior type if such is registered under supplied name
---@param name string
---@return userdata
function IClassRegistryAPI.GetBlockEntityBehaviorClass(name) end

-- Creates a block entity behavior instance for given block entity
---@param blockEntity BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@param name string
---@return BlockEntityBehavior # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IClassRegistryAPI.CreateBlockEntityBehavior(blockEntity, name) end

-- Returns the block behavior type registered for given name or null
---@param code string
---@return userdata
function IClassRegistryAPI.GetBlockBehaviorClass(code) end

-- Returns the collectible behavior type registered for given name or null
---@param code string
---@return userdata
function IClassRegistryAPI.GetCollectibleBehaviorClass(code) end

-- Creates a block behavior instance from given block class 
---@param forEntity Entity The basic class for all entities in the game
---@param entityBehaviorName string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function IClassRegistryAPI.CreateEntityBehavior(forEntity, entityBehaviorName) end

---@param entityBehaviorName string
---@return userdata
function IClassRegistryAPI.GetEntityBehaviorClass(entityBehaviorName) end

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return IInventoryNetworkUtil
function IClassRegistryAPI.CreateInvNetworkUtil(inv, api) end

-- Creates an item instance from given item class 
---@param itemclass string
---@return Item # Represents an in game Item of Vintage Story
function IClassRegistryAPI.CreateItem(itemclass) end

-- Gets the registered item type or null if not registered
---@param itemClass string
---@return userdata
function IClassRegistryAPI.GetItemClass(itemClass) end

-- Creates a json serializable version of an ITreeAttribute
---@param attributes table
---@return JsonTreeAttribute
function IClassRegistryAPI.CreateJsonTreeAttributeFromDict(attributes) end

-- Returns the type for given BlockEntity class name as register in the ClassRegistry
---@param bockEntityClass string
---@return userdata
function IClassRegistryAPI.GetBlockEntity(bockEntityClass) end

-- Returns the block entity class code if give Type is a registered block entity class
---@param type userdata
---@return string
function IClassRegistryAPI.GetBlockEntityClass(type) end

-- Returns the entity class code if give Type is a registered entity class
---@param entityType userdata
---@return string
function IClassRegistryAPI.GetEntityClassName(entityType) end

-- Creates a crop behavior instance from given block class 
---@param forBlock Block Basic class for a placeable block
---@param cropBehaviorName string
---@return CropBehavior
function IClassRegistryAPI.CreateCropBehavior(forBlock, cropBehaviorName) end

---@param className string
---@param ParticleProvider userdata
function IClassRegistryAPI.RegisterParticlePropertyProvider(className, ParticleProvider) end

---@param entityType userdata
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function IClassRegistryAPI.CreateParticlePropertyProvider(entityType) end

---@param className string
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function IClassRegistryAPI.CreateParticlePropertyProvider(className) end


