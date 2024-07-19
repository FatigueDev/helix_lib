---@meta

---@class AnimationManager:  IDisposable, IAnimationManager
---@field AnimationsDirty boolean Are the animations dirty in this AnimationManager?
---@field Animator IAnimator The animator for the animation manager.
---@field HeadController EntityHeadController The entity head controller for this animator.
---@field ActiveAnimationsByAnimCode table The list of currently active animations that should be playing
---@field Triggers table
AnimationManager = {}

---@return AnimationManager
function AnimationManager.ctor() end

---@return boolean
function AnimationManager.get_AnimationsDirty() end

---@param value boolean
function AnimationManager.set_AnimationsDirty(value) end

---@return IAnimator
function AnimationManager.get_Animator() end

---@param value IAnimator
function AnimationManager.set_Animator(value) end

---@return EntityHeadController
function AnimationManager.get_HeadController() end

---@param value EntityHeadController
function AnimationManager.set_HeadController(value) end

-- Initializes the Animation Manager.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param entity Entity The basic class for all entities in the game
function AnimationManager.Init(api, entity) end

---@param anims string
---@return boolean
function AnimationManager.IsAnimationActive(anims) end

---@param anim string
---@return RunningAnimation
function AnimationManager.GetAnimationState(anim) end

-- If given animation is running, will set its progress to the first animation frame
---@param animCode string
function AnimationManager.ResetAnimation(animCode) end

-- Client: Starts given animation
-- Server: Sends all active anims to all connected clients then purges the ActiveAnimationsByAnimCode list
---@param animdata AnimationMetaData
---@return boolean
function AnimationManager.StartAnimation(animdata) end

-- Start a new animation defined in the entity config file. If it's not defined, it won't play.
-- Use StartAnimation(AnimationMetaData animdata) to circumvent the entity config anim data.
---@param configCode string
---@return boolean
function AnimationManager.StartAnimation(configCode) end

-- Stops given animation
---@param code string
function AnimationManager.StopAnimation(code) end

-- The event fired when the manager recieves the server animations.
---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function AnimationManager.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

-- Serializes the slots contents to be stored in the SaveGame
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function AnimationManager.ToAttributes(tree, forClient) end

-- Loads the entity from a stored byte array from the SaveGame
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param version string
function AnimationManager.FromAttributes(tree, version) end

-- The event fired at each server tick.
---@param dt number
function AnimationManager.OnServerTick(dt) end

-- The event fired each time the client ticks.
---@param dt number
function AnimationManager.OnClientFrame(dt) end

---@param trigger AnimFrameCallback
function AnimationManager.RegisterFrameCallback(trigger) end

-- Disposes of the animation manager.
function AnimationManager.Dispose() end

---@param code string
function AnimationManager.OnAnimationStopped(code) end

---@return userdata
function AnimationManager.GetType() end

---@return string
function AnimationManager.ToString() end

---@param obj userdata
---@return boolean
function AnimationManager.Equals(obj) end

---@return number
function AnimationManager.GetHashCode() end


