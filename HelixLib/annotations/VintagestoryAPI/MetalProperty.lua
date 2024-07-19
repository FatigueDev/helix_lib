---@meta

---@class MetalProperty: WorldProperty`1
---@field MeltPoint number
---@field BoilPoint number
---@field Density number
---@field SpecificHeatCapacity number
---@field Elemental boolean
---@field Tier number
---@field Code AssetLocation
---@field Variants MetalPropertyVariant[]
MetalProperty = {}

---@return MetalProperty
function MetalProperty.ctor() end

---@return userdata
function MetalProperty.GetType() end

---@return string
function MetalProperty.ToString() end

---@param obj userdata
---@return boolean
function MetalProperty.Equals(obj) end

---@return number
function MetalProperty.GetHashCode() end


