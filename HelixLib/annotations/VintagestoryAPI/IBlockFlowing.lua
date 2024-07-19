---@meta

---@class IBlockFlowing
---@field Flow string
---@field FlowNormali Vec3i
---@field IsLava boolean
IBlockFlowing = {}


---@return string
function IBlockFlowing.get_Flow() end

---@param value string
function IBlockFlowing.set_Flow(value) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IBlockFlowing.get_FlowNormali() end

---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IBlockFlowing.set_FlowNormali(value) end

---@return boolean
function IBlockFlowing.get_IsLava() end


