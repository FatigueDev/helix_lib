---@meta PlayerCamera
---@class PlayerCamera: Camera
---@field ctor fun(game: ClientMain): PlayerCamera
---@field OnPlayerPhysicsTick fun(nextAccum: Single, prevPos: Vec3d): nil
---@field OnBeforeRenderFrame3D fun(dt: Single): nil
---@field CycleMode fun(): nil
---@field get_CamSourcePosition fun(): Vec3d
---@field set_CamSourcePosition fun(value: Vec3d): nil
---@field get_OriginPosition fun(): Vec3d
---@field set_OriginPosition fun(value: Vec3d): nil
---@field get_Yaw fun(): Double
---@field set_Yaw fun(value: Double): nil
---@field get_Pitch fun(): Double
---@field set_Pitch fun(value: Double): nil
---@field get_Roll fun(): Double
---@field set_Roll fun(value: Double): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field CamSourcePosition Vec3d
---@field OriginPosition Vec3d
---@field Yaw Vec3d
---@field Pitch Vec3d
---@field Roll Vec3d
---@field CameraShakeStrength Vec3d
---@field UpdateCameraPos Vec3d
---@field deltaSum Vec3d
---@field CameraEyePos Vec3d
---@field PlayerHeight Vec3d
---@field forwardVec Vec3d
---@field CameraOffset Vec3d
PlayerCamera = {}