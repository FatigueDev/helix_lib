---@meta

---@class EntityClientProperties: EntitySidedProperties, EntitySidedProperties
---@field Texture CompositeTexture Used by various renderers to retrieve the entities texture it should be drawn with
---@field FirstTexture CompositeTexture Returns the first texture in Textures dict
---@field Renderer EntityRenderer Set by the game client
---@field RendererName string Name of there renderer system that draws this entity
---@field Textures IDictionary`2 Directory of all available textures. First one will be default one
---@field GlowLevel number The glow level for the entity.
---@field PitchStep boolean Makes entities pitch forward and backwards when stepping
---@field Shape CompositeShape The shape of the entity
---@field LoadedShape Shape Only loaded for World.EntityTypes instances of EntityProperties, because it makes no sense to have 1000 loaded entities needing to load 1000 shapes. During entity load/spawn this value is assigned however On the client it gets set by the EntityTextureAtlasManager On the server by the EntitySimulation system
---@field LoadedAlternateShapes Shape[]
---@field LoadedShapeForEntity Shape The shape for this particular entity who owns this properties object
---@field ShapeForEntity CompositeShape
---@field Size number The size of the entity (default: 1f)
---@field SizeGrowthFactor number The rate at which the entity's size grows with age - used for chicks and other small baby animals
---@field Animations AnimationMetaData[] The animations of the entity.
---@field AnimationsByMetaCode table
---@field AnimationsByCrc32 table
---@field Attributes ITreeAttribute The attributes of the entity type.
---@field BehaviorsAsJsonObj JsonObject[] Entity type behaviors
---@field Behaviors table When this property is attached to an entity - the behaviors attached of entity.
EntityClientProperties = {}

---@param behaviors JsonObject[] Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@return EntityClientProperties
function EntityClientProperties.ctor(behaviors) end

---@return CompositeTexture # A single block texture
function EntityClientProperties.get_Texture() end

---@return CompositeTexture # A single block texture
function EntityClientProperties.get_FirstTexture() end

---@param forEntityId number
function EntityClientProperties.DetermineLoadedShape(forEntityId) end

-- Initializes the client properties.
---@param entityTypeCode AssetLocation Defines a complete path to an assets, including it's domain
---@param world IWorldAccessor Important interface to access the game world.
function EntityClientProperties.Init(entityTypeCode, world) end

-- Does not clone textures, but does clone shapes
---@return EntitySidedProperties
function EntityClientProperties.Clone() end

---@param entity Entity The basic class for all entities in the game
---@param properties EntityProperties
---@param world IWorldAccessor Important interface to access the game world.
function EntityClientProperties.loadBehaviors(entity, properties, world) end

---@return userdata
function EntityClientProperties.GetType() end

---@return string
function EntityClientProperties.ToString() end

---@param obj userdata
---@return boolean
function EntityClientProperties.Equals(obj) end

---@return number
function EntityClientProperties.GetHashCode() end


