---@meta

-- A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
---@class IntDataMap2D
---@field InnerSize number Width and Length of the map excluding any padding
---@field Data number
---@field Size number Full Width and Length of the map (square)
---@field TopLeftPadding number Top and Left padding
---@field BottomRightPadding number Bottom and Right padding
IntDataMap2D = {}

---@return IntDataMap2D
function IntDataMap2D.ctor() end

---@return number
function IntDataMap2D.get_InnerSize() end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IntDataMap2D.CreateEmpty() end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetInt(x, z) end

---@param x number
---@param z number
---@param value number
function IntDataMap2D.SetInt(x, z, value) end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetUnpaddedInt(x, z) end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetUnpaddedColorLerped(x, z) end

-- The parameters should both be in the range 0..1.  They represent the position within the MapRegion.  Calling code may need to use the (float)((double)val % 1.0) technique to ensure enough bits of precision when taking the fractional part (% 1.0), if val is large (for example a BlockPos in a 8Mx8M world)
---@param x number
---@param z number
---@return number
function IntDataMap2D.GetUnpaddedColorLerpedForNormalizedPos(x, z) end

---@param x number
---@param z number
---@param regionSize number
---@return number
function IntDataMap2D.GetUnpaddedIntLerpedForBlockPos(x, z, regionSize) end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetUnpaddedIntLerped(x, z) end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetIntLerpedCorrectly(x, z) end

---@param x number
---@param z number
---@return number
function IntDataMap2D.GetColorLerpedCorrectly(x, z) end

---@return userdata
function IntDataMap2D.GetType() end

---@return string
function IntDataMap2D.ToString() end

---@param obj userdata
---@return boolean
function IntDataMap2D.Equals(obj) end

---@return number
function IntDataMap2D.GetHashCode() end


