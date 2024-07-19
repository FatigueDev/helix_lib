---@meta

---@class MatrixToolsd
MatrixToolsd = {}

---@return MatrixToolsd
function MatrixToolsd.ctor() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param projection number
---@param view number
---@param viewportWidth number
---@param viewportHeight number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function MatrixToolsd.Project(pos, projection, view, viewportWidth, viewportHeight) end

---@param m number
function MatrixToolsd.MatFollowPlayer(m) end

---@param m number
function MatrixToolsd.LoadPlayerFacingMatrix(m) end

---@param m number
function MatrixToolsd.MatFacePlayer(m) end

---@return userdata
function MatrixToolsd.GetType() end

---@return string
function MatrixToolsd.ToString() end

---@param obj userdata
---@return boolean
function MatrixToolsd.Equals(obj) end

---@return number
function MatrixToolsd.GetHashCode() end


