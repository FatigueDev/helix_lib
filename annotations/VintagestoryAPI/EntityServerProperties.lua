---@meta

---@class EntityServerProperties: EntitySidedProperties, EntitySidedProperties
---@field SpawnConditions SpawnConditions The conditions for spawning the entity.
---@field Attributes ITreeAttribute The attributes of the entity type.
---@field BehaviorsAsJsonObj JsonObject[] Entity type behaviors
---@field Behaviors table When this property is attached to an entity - the behaviors attached of entity.
EntityServerProperties = {}

---@param behaviors JsonObject[] Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@return EntityServerProperties
function EntityServerProperties.ctor(behaviors) end

-- Makes a copy of this EntiyServerProperties type
---@return EntitySidedProperties
function EntityServerProperties.Clone() end

---@param entity Entity The basic class for all entities in the game
---@param properties EntityProperties
---@param world IWorldAccessor Important interface to access the game world.
function EntityServerProperties.loadBehaviors(entity, properties, world) end

---@return userdata
function EntityServerProperties.GetType() end

---@return string
function EntityServerProperties.ToString() end

---@param obj userdata
---@return boolean
function EntityServerProperties.Equals(obj) end

---@return number
function EntityServerProperties.GetHashCode() end


