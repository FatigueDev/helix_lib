---@meta

---@class HorRectanglei
---@field MinX number
---@field MaxX number
---@field MaxZ number
---@field MinZ number
---@field X1 number
---@field Z1 number
---@field X2 number
---@field Z2 number
HorRectanglei = {}

---@return HorRectanglei
function HorRectanglei.ctor() end
---@param x1 number
---@param z1 number
---@param x2 number
---@param z2 number
---@return HorRectanglei
function HorRectanglei.ctor(x1, z1, x2, z2) end

---@return number
function HorRectanglei.get_MinX() end

---@return number
function HorRectanglei.get_MaxX() end

---@return number
function HorRectanglei.get_MaxZ() end

---@return number
function HorRectanglei.get_MinZ() end

---@return userdata
function HorRectanglei.GetType() end

---@return string
function HorRectanglei.ToString() end

---@param obj userdata
---@return boolean
function HorRectanglei.Equals(obj) end

---@return number
function HorRectanglei.GetHashCode() end


