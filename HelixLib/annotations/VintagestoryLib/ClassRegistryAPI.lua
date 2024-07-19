---@meta

---@class ClassRegistryAPI:  IClassRegistryAPI
---@field BlockClassToTypeMapping table
---@field ItemClassToTypeMapping table
ClassRegistryAPI = {}

---@param world IWorldAccessor Important interface to access the game world.
---@param registry ClassRegistry
---@return ClassRegistryAPI
function ClassRegistryAPI.ctor(world, registry) end

---@return table
function ClassRegistryAPI.get_BlockClassToTypeMapping() end

---@return table
function ClassRegistryAPI.get_ItemClassToTypeMapping() end

---@param blockclass string
---@return Block # Basic class for a placeable block
function ClassRegistryAPI.CreateBlock(blockclass) end

---@param block Block Basic class for a placeable block
---@param blockclass string
---@return BlockBehavior # Allows for definitions of behaviors of a block that can be applied to any block
function ClassRegistryAPI.CreateBlockBehavior(block, blockclass) end

---@param blockclass string
---@return userdata
function ClassRegistryAPI.GetBlockBehaviorClass(blockclass) end

---@param itemclass string
---@return Item # Represents an in game Item of Vintage Story
function ClassRegistryAPI.CreateItem(itemclass) end

---@param itemstack? ItemStack
---@return IAttribute # An attribute from an attribute tree
function ClassRegistryAPI.CreateItemstackAttribute(itemstack) end

---@param value? string
---@return IAttribute # An attribute from an attribute tree
function ClassRegistryAPI.CreateStringAttribute(value) end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ClassRegistryAPI.CreateTreeAttribute() end

---@param attributes table
---@return JsonTreeAttribute
function ClassRegistryAPI.CreateJsonTreeAttributeFromDict(attributes) end

---@param entityClass string
---@return Entity # The basic class for all entities in the game
function ClassRegistryAPI.CreateEntity(entityClass) end

---@param entityType EntityProperties
---@return Entity # The basic class for all entities in the game
function ClassRegistryAPI.CreateEntity(entityType) end

---@param blockEntityClass string
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClassRegistryAPI.CreateBlockEntity(blockEntityClass) end

---@param blockEntityClass string
---@return userdata
function ClassRegistryAPI.GetBlockEntity(blockEntityClass) end

---@param forEntity Entity The basic class for all entities in the game
---@param entityBehaviorName string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function ClassRegistryAPI.CreateEntityBehavior(forEntity, entityBehaviorName) end

---@param type userdata
---@return string
function ClassRegistryAPI.GetBlockEntityClass(type) end

---@param forBlock Block Basic class for a placeable block
---@param cropBehaviorName string
---@return CropBehavior
function ClassRegistryAPI.CreateCropBehavior(forBlock, cropBehaviorName) end

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return IInventoryNetworkUtil
function ClassRegistryAPI.CreateInvNetworkUtil(inv, api) end

---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return IMountable
function ClassRegistryAPI.CreateMountable(tree) end

---@param blockclass string
---@return userdata
function ClassRegistryAPI.GetBlockClass(blockclass) end

---@param itemClass string
---@return userdata
function ClassRegistryAPI.GetItemClass(itemClass) end

---@param blockBehaviorType userdata
---@return string
function ClassRegistryAPI.GetBlockBehaviorClassName(blockBehaviorType) end

---@param entityType userdata
---@return string
function ClassRegistryAPI.GetEntityClassName(entityType) end

---@param name string
---@return userdata
function ClassRegistryAPI.GetBlockEntityBehaviorClass(name) end

---@param blockEntity BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@param name string
---@return BlockEntityBehavior # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClassRegistryAPI.CreateBlockEntityBehavior(blockEntity, name) end

---@param entityBehaviorName string
---@return userdata
function ClassRegistryAPI.GetEntityBehaviorClass(entityBehaviorName) end

---@param forCollectible CollectibleObject Contains all properties shared by Blocks and Items
---@param code string
---@return CollectibleBehavior
function ClassRegistryAPI.CreateCollectibleBehavior(forCollectible, code) end

---@param code string
---@return userdata
function ClassRegistryAPI.GetCollectibleBehaviorClass(code) end

---@param type userdata
---@return string
function ClassRegistryAPI.GetCollectibleBehaviorClassName(type) end

---@param className string
---@param ParticleProvider userdata
function ClassRegistryAPI.RegisterParticlePropertyProvider(className, ParticleProvider) end

---@param entityType userdata
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function ClassRegistryAPI.CreateParticlePropertyProvider(entityType) end

---@param className string
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function ClassRegistryAPI.CreateParticlePropertyProvider(className) end

---@return userdata
function ClassRegistryAPI.GetType() end

---@return string
function ClassRegistryAPI.ToString() end

---@param obj userdata
---@return boolean
function ClassRegistryAPI.Equals(obj) end

---@return number
function ClassRegistryAPI.GetHashCode() end


