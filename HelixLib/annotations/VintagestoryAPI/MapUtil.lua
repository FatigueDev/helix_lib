---@meta

---@class MapUtil
MapUtil = {}

---@return MapUtil
function MapUtil.ctor() end

---@param x number
---@param y number
---@param z number
---@param sizex number
---@param sizez number
---@return number
function MapUtil.Index3dL(x, y, z, sizex, sizez) end

---@param x number
---@param y number
---@param z number
---@param sizex number
---@param sizez number
---@return number
function MapUtil.Index3d(x, y, z, sizex, sizez) end

---@param x number
---@param y number
---@param z number
---@param sizex number
---@param sizez number
---@return number
function MapUtil.Index3d(x, y, z, sizex, sizez) end

---@param x number
---@param y number
---@param sizex number
---@return number
function MapUtil.Index2d(x, y, sizex) end

---@param x number
---@param y number
---@param sizex number
---@return number
function MapUtil.Index2dL(x, y, sizex) end

---@param index number
---@param sizex number
---@param sizez number
---@param ret Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function MapUtil.PosInt3d(index, sizex, sizez, ret) end

---@param index number
---@param sizex number
---@param sizez number
---@param ret Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function MapUtil.PosInt3d(index, sizex, sizez, ret) end

---@param index number
---@param sizex number
---@param ret Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function MapUtil.PosInt2d(index, sizex, ret) end

---@param index number
---@param sizex number
---@param sizey number
---@return number
function MapUtil.PosX(index, sizex, sizey) end

---@param index number
---@param sizex number
---@param sizey number
---@return number
function MapUtil.PosZ(index, sizex, sizey) end

---@param index number
---@param sizex number
---@param sizey number
---@return number
function MapUtil.PosY(index, sizex, sizey) end

---@return userdata
function MapUtil.GetType() end

---@return string
function MapUtil.ToString() end

---@param obj userdata
---@return boolean
function MapUtil.Equals(obj) end

---@return number
function MapUtil.GetHashCode() end


