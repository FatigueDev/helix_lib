---@meta

---@class MetalPropertyVariant: WorldPropertyVariant, WorldPropertyVariant
---@field Tier number
---@field Code AssetLocation
MetalPropertyVariant = {}

---@return MetalPropertyVariant
function MetalPropertyVariant.ctor() end

---@return userdata
function MetalPropertyVariant.GetType() end

---@return string
function MetalPropertyVariant.ToString() end

---@param obj userdata
---@return boolean
function MetalPropertyVariant.Equals(obj) end

---@return number
function MetalPropertyVariant.GetHashCode() end


