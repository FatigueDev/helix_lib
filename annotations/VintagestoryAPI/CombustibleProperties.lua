---@meta

-- Used for an items combustible value
---@class CombustibleProperties
---@field BurnTemperature number The temperature at which it burns
---@field BurnDuration number For how long it burns in real life seconds
---@field HeatResistance number How many degrees celsius it can resists before it ignites
---@field MeltingPoint number How many degrees celsius it takes to smelt/transform this into another. Only used when put in a stove and Melted is set 
---@field MaxTemperature number If there is a melting point, the max temperature it can reach. Set to 0 for no limit 
---@field MeltingDuration number For how many seconds the temperature has to be above the melting point until the item is smelted
---@field SmokeLevel number How much smoke this item produces when being used as fuel
---@field SmeltedRatio number How many ores are required to produce one output stack
---@field SmeltingType EnumSmeltType Used for correct naming in the tool tip
---@field SmeltedStack JsonItemStack If set, the block/item is smeltable in a furnace and this is the resulting itemstack once the MeltingPoint has been reached for the supplied duration.
---@field RequiresContainer boolean If true (default) a container is required to smelt this item. 
CombustibleProperties = {}

---@return CombustibleProperties
function CombustibleProperties.ctor() end

-- Creates a deep copy
---@return CombustibleProperties # Used for an items combustible value
function CombustibleProperties.Clone() end

---@return userdata
function CombustibleProperties.GetType() end

---@return string
function CombustibleProperties.ToString() end

---@param obj userdata
---@return boolean
function CombustibleProperties.Equals(obj) end

---@return number
function CombustibleProperties.GetHashCode() end


