---@meta

---@class Camera
---@field CamSourcePosition Vec3d
---@field OriginPosition Vec3d
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field CameraEyePos Vec3d
---@field PlayerHeight number
---@field forwardVec Vec3d
---@field CameraOffset ModelTransform
Camera = {}

---@return Camera
function Camera.ctor() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Camera.get_CamSourcePosition() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Camera.set_CamSourcePosition(value) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Camera.get_OriginPosition() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Camera.set_OriginPosition(value) end

---@return number
function Camera.get_Yaw() end

---@param value number
function Camera.set_Yaw(value) end

---@return number
function Camera.get_Pitch() end

---@param value number
function Camera.set_Pitch(value) end

---@return number
function Camera.get_Roll() end

---@param value number
function Camera.set_Roll(value) end

---@return userdata
function Camera.GetType() end

---@return string
function Camera.ToString() end

---@param obj userdata
---@return boolean
function Camera.Equals(obj) end

---@return number
function Camera.GetHashCode() end


