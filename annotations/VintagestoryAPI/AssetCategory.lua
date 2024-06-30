---@meta

---@class AssetCategory
---@field Code string Path and name
---@field SideType EnumAppSide Determines wether it will be used on server, client or both.
---@field AffectsGameplay boolean Temporary solution to not change block types. Will be changed
---@field categories table
---@field blocktypes AssetCategory
---@field itemtypes AssetCategory
---@field lang AssetCategory
---@field patches AssetCategory
---@field config AssetCategory
---@field worldproperties AssetCategory
---@field sounds AssetCategory
---@field shapes AssetCategory
---@field shaders AssetCategory
---@field shaderincludes AssetCategory
---@field textures AssetCategory
---@field music AssetCategory
---@field dialog AssetCategory
---@field recipes AssetCategory
---@field worldgen AssetCategory
---@field entities AssetCategory
AssetCategory = {}

---@param code string
---@param AffectsGameplay boolean
---@param SideType EnumAppSide
---@return AssetCategory
function AssetCategory.ctor(code, AffectsGameplay, SideType) end

---@return string
function AssetCategory.get_Code() end

---@return EnumAppSide
function AssetCategory.get_SideType() end

---@return boolean
function AssetCategory.get_AffectsGameplay() end

---@return string
function AssetCategory.ToString() end

-- Gets the asset category by code name
---@param code string
---@return AssetCategory
function AssetCategory.FromCode(code) end

---@return userdata
function AssetCategory.GetType() end

---@param obj userdata
---@return boolean
function AssetCategory.Equals(obj) end

---@return number
function AssetCategory.GetHashCode() end


