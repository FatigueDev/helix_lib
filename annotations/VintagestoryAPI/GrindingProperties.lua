---@meta

---@class GrindingProperties
---@field GrindedStack JsonItemStack
---@field usedObsoleteNotation boolean
---@field GroundStack JsonItemStack If set, the block/item is grindable in a quern and this is the resulting itemstack once the grinding time is over.
GrindingProperties = {}

---@return GrindingProperties
function GrindingProperties.ctor() end

---@return JsonItemStack
function GrindingProperties.get_GrindedStack() end

---@param value JsonItemStack
function GrindingProperties.set_GrindedStack(value) end

-- Makes a deep copy of the properties.
---@return GrindingProperties
function GrindingProperties.Clone() end

---@return userdata
function GrindingProperties.GetType() end

---@return string
function GrindingProperties.ToString() end

---@param obj userdata
---@return boolean
function GrindingProperties.Equals(obj) end

---@return number
function GrindingProperties.GetHashCode() end


