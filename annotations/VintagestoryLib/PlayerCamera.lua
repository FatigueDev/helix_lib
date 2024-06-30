---@meta

---@class PlayerCamera: Camera, Camera
---@field CamSourcePosition Vec3d
---@field OriginPosition Vec3d
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field CameraShakeStrength number
---@field UpdateCameraPos boolean
---@field deltaSum number
---@field CameraEyePos Vec3d
---@field PlayerHeight number
---@field forwardVec Vec3d
---@field CameraOffset ModelTransform
PlayerCamera = {}

---@param game ClientMain
---@return PlayerCamera
function PlayerCamera.ctor(game) end

---@param nextAccum number
---@param prevPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PlayerCamera.OnPlayerPhysicsTick(nextAccum, prevPos) end

---@param dt number
function PlayerCamera.OnBeforeRenderFrame3D(dt) end

function PlayerCamera.CycleMode() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PlayerCamera.get_CamSourcePosition() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PlayerCamera.set_CamSourcePosition(value) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PlayerCamera.get_OriginPosition() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PlayerCamera.set_OriginPosition(value) end

---@return number
function PlayerCamera.get_Yaw() end

---@param value number
function PlayerCamera.set_Yaw(value) end

---@return number
function PlayerCamera.get_Pitch() end

---@param value number
function PlayerCamera.set_Pitch(value) end

---@return number
function PlayerCamera.get_Roll() end

---@param value number
function PlayerCamera.set_Roll(value) end

---@return userdata
function PlayerCamera.GetType() end

---@return string
function PlayerCamera.ToString() end

---@param obj userdata
---@return boolean
function PlayerCamera.Equals(obj) end

---@return number
function PlayerCamera.GetHashCode() end


