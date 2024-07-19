---@meta

---@class ClassRegistry
---@field mountableEntries table
---@field inventoryClassToTypeMapping table
---@field RecipeRegistryToTypeMapping table
---@field TypeToRecipeRegistryMapping table
---@field BlockClassToTypeMapping table
---@field blockbehaviorToTypeMapping table
---@field blockentitybehaviorToTypeMapping table
---@field collectibleBehaviorToTypeMapping table
---@field cropbehaviorToTypeMapping table
---@field ItemClassToTypeMapping table
---@field entityClassNameToTypeMapping table
---@field entityTypeToClassNameMapping table
---@field EntityRendererClassNameToTypeMapping table
---@field EntityRendererTypeToClassNameMapping table
---@field entityBehaviorClassNameToTypeMapping table
---@field entityBehaviorTypeToClassNameMapping table
---@field blockEntityClassnameToTypeMapping table
---@field blockEntityTypeToClassnameMapping table
---@field ParticleProviderClassnameToTypeMapping table
---@field ParticleProviderTypeToClassnameMapping table
---@field legacyBlockEntityClassNames table
ClassRegistry = {}

---@return ClassRegistry
function ClassRegistry.ctor() end

---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function ClassRegistry.RegisterMountable(className, mountableInstancer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return IMountable
function ClassRegistry.CreateMountable(world, tree) end

---@param inventoryClass string
---@param inventory userdata
function ClassRegistry.RegisterInventoryClass(inventoryClass, inventory) end

---@param inventoryClass string
---@param inventoryId string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryBase # Basic class representing an item inventory
function ClassRegistry.CreateInventory(inventoryClass, inventoryId, api) end

---@param recipeRegistryCode string
---@param recipeRegistry userdata
function ClassRegistry.RegisterRecipeRegistry(recipeRegistryCode, recipeRegistry) end

---@param recipeRegistryCode string
function ClassRegistry.RegisterRecipeRegistry(recipeRegistryCode) end

---@param recipeRegistryCode string
---@return T
function ClassRegistry.CreateRecipeRegistry(recipeRegistryCode) end

---@return string
function ClassRegistry.GetRecipeRegistryCode() end

---@param blockClass string
---@param block userdata
function ClassRegistry.RegisterBlockClass(blockClass, block) end

---@param blockClass string
---@return Block # Basic class for a placeable block
function ClassRegistry.CreateBlock(blockClass) end

---@param blockClass string
---@return userdata
function ClassRegistry.GetBlockClass(blockClass) end

---@param code string
---@param block userdata
function ClassRegistry.RegisterBlockBehaviorClass(code, block) end

---@param blockBehaviorType userdata
---@return string
function ClassRegistry.GetBlockBehaviorClassName(blockBehaviorType) end

---@param block Block Basic class for a placeable block
---@param blockClass string
---@return BlockBehavior # Allows for definitions of behaviors of a block that can be applied to any block
function ClassRegistry.CreateBlockBehavior(block, blockClass) end

---@param blockClass string
---@param blockentity userdata
function ClassRegistry.RegisterBlockEntityBehaviorClass(blockClass, blockentity) end

---@param blockBehaviorType userdata
---@return string
function ClassRegistry.GetBlockEntityBehaviorClassName(blockBehaviorType) end

---@param blockentity BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@param blockEntityClass string
---@return BlockEntityBehavior # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClassRegistry.CreateBlockEntityBehavior(blockentity, blockEntityClass) end

---@param code string
---@param block userdata
function ClassRegistry.RegisterCollectibleBehaviorClass(code, block) end

---@param blockBehaviorType userdata
---@return string
function ClassRegistry.GetCollectibleBehaviorClassName(blockBehaviorType) end

---@param collectible CollectibleObject Contains all properties shared by Blocks and Items
---@param code string
---@return CollectibleBehavior
function ClassRegistry.CreateCollectibleBehavior(collectible, code) end

---@param code string
---@return userdata
function ClassRegistry.GetCollectibleBehaviorClass(code) end

---@param cropBehaviorClass string
---@param block userdata
function ClassRegistry.RegisterCropBehavior(cropBehaviorClass, block) end

---@param cropBehaviorType userdata
---@return string
function ClassRegistry.GetCropBehaviorClassName(cropBehaviorType) end

---@param block Block Basic class for a placeable block
---@param cropBehaviorClass string
---@return CropBehavior
function ClassRegistry.createCropBehavior(block, cropBehaviorClass) end

---@param itemClass string
---@param item userdata
function ClassRegistry.RegisterItemClass(itemClass, item) end

---@param itemClass string
---@return Item # Represents an in game Item of Vintage Story
function ClassRegistry.CreateItem(itemClass) end

---@param itemClass string
---@return userdata
function ClassRegistry.GetItemClass(itemClass) end

---@param className string
---@param entity userdata
function ClassRegistry.RegisterEntityType(className, entity) end

---@param entityType userdata
---@return string
function ClassRegistry.GetEntityClassName(entityType) end

---@param entityType userdata
---@return Entity # The basic class for all entities in the game
function ClassRegistry.CreateEntity(entityType) end

---@param className string
---@return Entity # The basic class for all entities in the game
function ClassRegistry.CreateEntity(className) end

---@param className string
---@param EntityRenderer userdata
function ClassRegistry.RegisterEntityRendererType(className, EntityRenderer) end

---@param EntityRendererType userdata
---@return string
function ClassRegistry.GetEntityRendererClassName(EntityRendererType) end

---@param EntityRendererType userdata
---@return EntityRenderer # Base class for entity rendering
function ClassRegistry.CreateEntityRenderer(EntityRendererType) end

---@param className string
---@param args userdata
---@return EntityRenderer # Base class for entity rendering
function ClassRegistry.CreateEntityRenderer(className, args) end

---@param entityBehaviorName string
---@return userdata
function ClassRegistry.GetEntityBehaviorClass(entityBehaviorName) end

---@param className string
---@param entityBehavior userdata
function ClassRegistry.RegisterentityBehavior(className, entityBehavior) end

---@param entityBehaviorType userdata
---@return string
function ClassRegistry.GetEntityBehaviorClassName(entityBehaviorType) end

---@param forEntity Entity The basic class for all entities in the game
---@param entityBehaviorType userdata
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function ClassRegistry.CreateEntityBehavior(forEntity, entityBehaviorType) end

---@param forEntity Entity The basic class for all entities in the game
---@param className string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function ClassRegistry.CreateEntityBehavior(forEntity, className) end

---@param className string
---@param blockentity userdata
function ClassRegistry.RegisterBlockEntityType(className, blockentity) end

---@param entityType userdata
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClassRegistry.CreateBlockEntity(entityType) end

---@param className string
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClassRegistry.CreateBlockEntity(className) end

---@param className string
---@return userdata
function ClassRegistry.GetBlockEntityType(className) end

---@param className string
---@param ParticleProvider userdata
function ClassRegistry.RegisterParticlePropertyProvider(className, ParticleProvider) end

---@param entityType userdata
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function ClassRegistry.CreateParticlePropertyProvider(entityType) end

---@param className string
---@return IParticlePropertiesProvider # Represents a provider of particle properties to be used when generating a particle
function ClassRegistry.CreateParticlePropertyProvider(className) end

---@return userdata
function ClassRegistry.GetType() end

---@return string
function ClassRegistry.ToString() end

---@param obj userdata
---@return boolean
function ClassRegistry.Equals(obj) end

---@return number
function ClassRegistry.GetHashCode() end


