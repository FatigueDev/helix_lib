---@meta

---@class RunningAnimation
---@field AnimProgress number
---@field meta AnimationMetaData
---@field CurrentFrame number
---@field Animation Animation
---@field Active boolean
---@field Running boolean
---@field Iterations number
---@field ShouldRewind boolean
---@field ShouldPlayTillEnd boolean
---@field EasingFactor number
---@field BlendedWeight number
---@field ElementWeights ShapeElementWeights[]
RunningAnimation = {}

---@return RunningAnimation
function RunningAnimation.ctor() end

---@return number
function RunningAnimation.get_AnimProgress() end

---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
function RunningAnimation.LoadWeights(rootElements) end

---@param dt number
---@param walkspeed number
function RunningAnimation.Progress(dt, walkspeed) end

function RunningAnimation.Stop() end

---@param dt number
function RunningAnimation.EaseOut(dt) end

---@return userdata
function RunningAnimation.GetType() end

---@return string
function RunningAnimation.ToString() end

---@param obj userdata
---@return boolean
function RunningAnimation.Equals(obj) end

---@return number
function RunningAnimation.GetHashCode() end


