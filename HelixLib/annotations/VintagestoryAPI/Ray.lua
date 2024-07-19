---@meta

---@class Ray
---@field Length number
---@field origin Vec3d
---@field dir Vec3d
Ray = {}

---@return Ray
function Ray.ctor() end
---@param o Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param d Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Ray
function Ray.ctor(o, d) end

---@return number
function Ray.get_Length() end

---@param minx number
---@param miny number
---@param minz number
---@param maxx number
---@param maxy number
---@param maxz number
function Ray.LimitToWalls(minx, miny, minz, maxx, maxy, maxz) end

---@return userdata
function Ray.GetType() end

---@return string
function Ray.ToString() end

---@param obj userdata
---@return boolean
function Ray.Equals(obj) end

---@return number
function Ray.GetHashCode() end


