---@meta

---@class PlayerHeadController: EntityHeadController, EntityHeadController
---@field HeadPose ElementPose
---@field NeckPose ElementPose
---@field UpperTorsoPose ElementPose
---@field LowerTorsoPose ElementPose
---@field UpperFootLPose ElementPose
---@field UpperFootRPose ElementPose
---@field yawOffset number
---@field pitchOffset number
PlayerHeadController = {}

---@param animator IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
---@param entity EntityPlayer
---@param entityShape Shape The base shape for all json objects.
---@return PlayerHeadController
function PlayerHeadController.ctor(animator, entity, entityShape) end

---@param dt number
function PlayerHeadController.OnFrame(dt) end

---@return userdata
function PlayerHeadController.GetType() end

---@return string
function PlayerHeadController.ToString() end

---@param obj userdata
---@return boolean
function PlayerHeadController.Equals(obj) end

---@return number
function PlayerHeadController.GetHashCode() end


