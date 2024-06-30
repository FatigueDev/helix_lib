---@meta

---@class ShapeUtil
---@field maxShells number
ShapeUtil = {}


---@param radius number
---@return Vec3f[] # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShapeUtil.GetCachedCubicShellNormalizedVectors(radius) end

---@param r number
---@return Vec3i[] # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShapeUtil.GenCubicShellVectors(r) end

-- Returns an array of vectors for each point in a square, sorted by manhatten distance to center, exluding the center point
---@param halflength number
---@return Vec2i[] # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ShapeUtil.GetSquarePointsSortedByMDist(halflength) end

-- Returns a square outline of given radius (only for odd lengths)
---@param halflength number
---@return Vec2i[] # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ShapeUtil.GetHollowSquarePoints(halflength) end

---@param x number
---@param y number
---@param r number
---@return Vec2i[] # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ShapeUtil.GetOctagonPoints(x, y, r) end

---@param list ICollection`1
---@param x number
---@param y number
---@param r number
---@param mapSizeX number
function ShapeUtil.LoadOctagonIndices(list, x, y, r, mapSizeX) end

---@param xm number
---@param ym number
---@param r number
---@return Vec2i[] # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ShapeUtil.GetPointsOfCircle(xm, ym, r) end

---@return userdata
function ShapeUtil.GetType() end

---@return string
function ShapeUtil.ToString() end

---@param obj userdata
---@return boolean
function ShapeUtil.Equals(obj) end

---@return number
function ShapeUtil.GetHashCode() end


