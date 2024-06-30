---@meta

---@class ClimateSpawnCondition
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
ClimateSpawnCondition = {}

---@return ClimateSpawnCondition
function ClimateSpawnCondition.ctor() end

---@param conds ClimateSpawnCondition
function ClimateSpawnCondition.SetFrom(conds) end

---@return userdata
function ClimateSpawnCondition.GetType() end

---@return string
function ClimateSpawnCondition.ToString() end

---@param obj userdata
---@return boolean
function ClimateSpawnCondition.Equals(obj) end

---@return number
function ClimateSpawnCondition.GetHashCode() end


