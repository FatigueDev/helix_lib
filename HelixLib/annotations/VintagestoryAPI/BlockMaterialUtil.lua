---@meta

---@class BlockMaterialUtil
BlockMaterialUtil = {}


-- Calculates the blast resistance of a given material.
---@param blastType EnumBlastType
---@param material EnumBlockMaterial Material of which a block my be made of Currently only used for mining speed for tools
---@return number
function BlockMaterialUtil.MaterialBlastResistance(blastType, material) end

-- Calculates the blast drop chance of a given material.
---@param blastType EnumBlastType
---@param material EnumBlockMaterial Material of which a block my be made of Currently only used for mining speed for tools
---@return number
function BlockMaterialUtil.MaterialBlastDropChances(blastType, material) end

---@return userdata
function BlockMaterialUtil.GetType() end

---@return string
function BlockMaterialUtil.ToString() end

---@param obj userdata
---@return boolean
function BlockMaterialUtil.Equals(obj) end

---@return number
function BlockMaterialUtil.GetHashCode() end


