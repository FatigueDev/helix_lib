---@meta

---@class CrushingProperties
---@field CrushedStack JsonItemStack If set, the block/item is crusable in a pulverizer and this is the resulting itemstack once the crushing time is over.
---@field HardnessTier number 0 = stone, 1 = copper, 2 = bronze, 3 = iron, 4 = steel
---@field Quantity NatFloat
CrushingProperties = {}

---@return CrushingProperties
function CrushingProperties.ctor() end

-- Makes a deep copy of the properties.
---@return CrushingProperties
function CrushingProperties.Clone() end

---@return userdata
function CrushingProperties.GetType() end

---@return string
function CrushingProperties.ToString() end

---@param obj userdata
---@return boolean
function CrushingProperties.Equals(obj) end

---@return number
function CrushingProperties.GetHashCode() end


