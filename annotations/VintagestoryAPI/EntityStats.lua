---@meta

---@class EntityStats:  IEnumerable
---@field Item EntityFloatStats
EntityStats = {}

---@param entity Entity The basic class for all entities in the game
---@return EntityStats
function EntityStats.ctor(entity) end

---@param key string
---@return EntityFloatStats
function EntityStats.get_Item(key) end

---@param key string
---@param value EntityFloatStats
function EntityStats.set_Item(key, value) end

---@return function
function EntityStats.GetEnumerator() end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function EntityStats.ToTreeAttributes(tree, forClient) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
function EntityStats.FromTreeAttributes(tree) end

-- Set up a stat. Its not required to call this method, you can go straight to doing .Set() if your blend type is weighted sum. Also initializes a base value of 1.
---@param category string
---@param blendType? EnumStatBlendType
---@return EntityStats
function EntityStats.Register(category, blendType) end

-- Set a stat value, if the stat catgory does not exist, it will create a new default one. Initializes a base value of 1 when creating a new stat.
---@param category string
---@param code string
---@param value number
---@param persistent? boolean
---@return EntityStats
function EntityStats.Set(category, code, value, persistent) end

-- Remove a stat value
---@param category string
---@param code string
---@return EntityStats
function EntityStats.Remove(category, code) end

-- Get the final stat value, blended by the stats blend type
---@param category string
---@return number
function EntityStats.GetBlended(category) end

---@return userdata
function EntityStats.GetType() end

---@return string
function EntityStats.ToString() end

---@param obj userdata
---@return boolean
function EntityStats.Equals(obj) end

---@return number
function EntityStats.GetHashCode() end


