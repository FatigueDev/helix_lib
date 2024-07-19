---@meta

-- A datastructure to hold 3 dimensional data in the form of floats  Can be used to perfrom trilinear interpolation between individual values
---@class FloatDataMap3D
---@field Data number
---@field Width number
---@field Length number
---@field Height number
FloatDataMap3D = {}

---@return FloatDataMap3D
function FloatDataMap3D.ctor() end
---@param width number
---@param height number
---@param length number
---@return FloatDataMap3D
function FloatDataMap3D.ctor(width, height, length) end

---@param x number
---@param y number
---@param z number
---@return number
function FloatDataMap3D.GetValue(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param value number
function FloatDataMap3D.SetValue(x, y, z, value) end

---@param x number
---@param y number
---@param z number
---@param value number
function FloatDataMap3D.AddValue(x, y, z, value) end

---@param x number
---@param y number
---@param z number
---@return number
function FloatDataMap3D.GetLerped(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return number
function FloatDataMap3D.GetLerpedCenterPixel(x, y, z) end

---@return userdata
function FloatDataMap3D.GetType() end

---@return string
function FloatDataMap3D.ToString() end

---@param obj userdata
---@return boolean
function FloatDataMap3D.Equals(obj) end

---@return number
function FloatDataMap3D.GetHashCode() end


