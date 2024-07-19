---@meta

---@class BaseSpawnConditions: ClimateSpawnCondition, ClimateSpawnCondition
---@field GroupSize NatFloat
---@field Group string The group of the spawn conditions.
---@field MinLightLevel number The minimum light level for an object to spawn.
---@field MaxLightLevel number The maximum light level for an object to spawn.
---@field LightLevelType EnumLightLevelType The type of light counted for spawning purposes.
---@field HerdSize NatFloat the group size for the spawn.
---@field Companions AssetLocation[] Additional companions for the spawn.
---@field InsideBlockCodes AssetLocation[] The blocks that the object will spawn in.  (default: air)
---@field RequireSolidGround boolean Checks to see if the object requires solid ground.
---@field TryOnlySurface boolean checks to see if the object can only spawn in the surface.
---@field ClimateValueMode EnumGetClimateMode Whether the rain and temperature values are referring to the worldgen values (i.e. yearly averages) or the current values at the moment of spawning
---@field MinTemp number The minimum tempurature for the object to spawn.
---@field MaxTemp number The maximum tempurature for the object to spawn.
---@field MinRain number The minimum amount of rain for the object to spawn.
---@field MaxRain number The maximum amount of rain for the object to spawn.
---@field MinForest number The minimum amount of forest cover needed for the object to spawn.
---@field MaxForest number The maximum amount of forest cover needed for the object to spawn.
---@field MinShrubs number The minimum amount of shrubbery needed for the object to spawn.
---@field MaxShrubs number The maximum amount of shrubbery needed for the object to spawn.
---@field MinY number Won't span below minY. 0...1 is world bottom to sea level, 1...2 is sea level to world top
---@field MaxY number Won't span above maxY. 0...1 is world bottom to sea level, 1...2 is sea level to world top
---@field MinForestOrShrubs number The minimum amount of forest or shrubs for the object to spawn.
BaseSpawnConditions = {}

---@return BaseSpawnConditions
function BaseSpawnConditions.ctor() end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function BaseSpawnConditions.get_GroupSize() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function BaseSpawnConditions.set_GroupSize(value) end

---@param testBlock Block Basic class for a placeable block
---@return boolean
function BaseSpawnConditions.CanSpawnInside(testBlock) end

---@param server IServerWorldAccessor The world accessor implemented by the server
---@param entityName string
---@param searchCache table
function BaseSpawnConditions.Initialise(server, entityName, searchCache) end

---@param conds ClimateSpawnCondition
function BaseSpawnConditions.SetFrom(conds) end

---@return userdata
function BaseSpawnConditions.GetType() end

---@return string
function BaseSpawnConditions.ToString() end

---@param obj userdata
---@return boolean
function BaseSpawnConditions.Equals(obj) end

---@return number
function BaseSpawnConditions.GetHashCode() end


