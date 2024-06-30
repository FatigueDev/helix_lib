---@meta

---@class EntityHeadController
---@field HeadPose ElementPose
---@field NeckPose ElementPose
---@field UpperTorsoPose ElementPose
---@field LowerTorsoPose ElementPose
---@field UpperFootLPose ElementPose
---@field UpperFootRPose ElementPose
---@field yawOffset number
---@field pitchOffset number
EntityHeadController = {}

---@param animator IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
---@param entity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param entityShape Shape The base shape for all json objects.
---@return EntityHeadController
function EntityHeadController.ctor(animator, entity, entityShape) end

-- The event fired when the game ticks.
---@param dt number
function EntityHeadController.OnFrame(dt) end

---@return userdata
function EntityHeadController.GetType() end

---@return string
function EntityHeadController.ToString() end

---@param obj userdata
---@return boolean
function EntityHeadController.Equals(obj) end

---@return number
function EntityHeadController.GetHashCode() end


