---@meta

---@class EntityFloatStats
---@field ValuesByKey OrderedDictionary`2
---@field BlendType EnumStatBlendType
EntityFloatStats = {}

---@return EntityFloatStats
function EntityFloatStats.ctor() end

---@return number
function EntityFloatStats.GetBlended() end

---@param code string
---@param value number
---@param persistent? boolean
function EntityFloatStats.Set(code, value, persistent) end

---@param code string
function EntityFloatStats.Remove(code) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function EntityFloatStats.ToTreeAttributes(tree, forClient) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
function EntityFloatStats.FromTreeAttributes(tree) end

---@return userdata
function EntityFloatStats.GetType() end

---@return string
function EntityFloatStats.ToString() end

---@param obj userdata
---@return boolean
function EntityFloatStats.Equals(obj) end

---@return number
function EntityFloatStats.GetHashCode() end


