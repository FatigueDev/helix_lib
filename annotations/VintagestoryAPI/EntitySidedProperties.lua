---@meta

---@class EntitySidedProperties
---@field Attributes ITreeAttribute The attributes of the entity type.
---@field BehaviorsAsJsonObj JsonObject[] Entity type behaviors
---@field Behaviors table When this property is attached to an entity - the behaviors attached of entity.
EntitySidedProperties = {}

---@param behaviors JsonObject[] Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@return EntitySidedProperties
function EntitySidedProperties.ctor(behaviors) end

---@param entity Entity The basic class for all entities in the game
---@param properties EntityProperties
---@param world IWorldAccessor Important interface to access the game world.
function EntitySidedProperties.loadBehaviors(entity, properties, world) end

-- Use this to make a deep copy of these properties.
---@return EntitySidedProperties
function EntitySidedProperties.Clone() end

---@return userdata
function EntitySidedProperties.GetType() end

---@return string
function EntitySidedProperties.ToString() end

---@param obj userdata
---@return boolean
function EntitySidedProperties.Equals(obj) end

---@return number
function EntitySidedProperties.GetHashCode() end


