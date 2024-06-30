---@meta

---@class TreeGenParams
---@field hemisphere EnumHemisphere
---@field skipForestFloor boolean
---@field size number
---@field vinesGrowthChance number
---@field mossGrowthChance number
---@field otherBlockChance number
---@field treesInChunkGenerated number
TreeGenParams = {}

---@return TreeGenParams
function TreeGenParams.ctor() end

---@return userdata
function TreeGenParams.GetType() end

---@return string
function TreeGenParams.ToString() end

---@param obj userdata
---@return boolean
function TreeGenParams.Equals(obj) end

---@return number
function TreeGenParams.GetHashCode() end


