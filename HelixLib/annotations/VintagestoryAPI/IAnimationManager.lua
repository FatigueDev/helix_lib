---@meta

-- Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
---@class IAnimationManager:  IDisposable
---@field Animator IAnimator The animator for this animation manager
---@field HeadController EntityHeadController The head controller for this manager.
---@field AnimationsDirty boolean Whether or not the animation is dirty.
---@field ActiveAnimationsByAnimCode table Gets the AnimationMetaData for the target action.
IAnimationManager = {}


---@return IAnimator
function IAnimationManager.get_Animator() end

---@param value IAnimator
function IAnimationManager.set_Animator(value) end

---@return EntityHeadController
function IAnimationManager.get_HeadController() end

---@param value EntityHeadController
function IAnimationManager.set_HeadController(value) end

-- Initialization call for the animation manager.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param entity Entity The basic class for all entities in the game
function IAnimationManager.Init(api, entity) end

---@return boolean
function IAnimationManager.get_AnimationsDirty() end

---@param value boolean
function IAnimationManager.set_AnimationsDirty(value) end

---@param anims string
---@return boolean
function IAnimationManager.IsAnimationActive(anims) end

---@param anim string
---@return RunningAnimation
function IAnimationManager.GetAnimationState(anim) end

-- Starts an animation based on the AnimationMetaData
---@param animdata AnimationMetaData
---@return boolean
function IAnimationManager.StartAnimation(animdata) end

-- Starts an animation based on JSON code.
---@param configCode string
---@return boolean
function IAnimationManager.StartAnimation(configCode) end

-- Stops the animation.
---@param code string
function IAnimationManager.StopAnimation(code) end

-- Additional attributes applied to the animation
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param version string
function IAnimationManager.FromAttributes(tree, version) end

-- Additional attributes applied from the animation
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function IAnimationManager.ToAttributes(tree, forClient) end

---@return table
function IAnimationManager.get_ActiveAnimationsByAnimCode() end

-- The event fired when the client recieves the server animations
---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function IAnimationManager.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

-- The event fired when the animation is stopped.
---@param code string
function IAnimationManager.OnAnimationStopped(code) end

---@param dt number
function IAnimationManager.OnServerTick(dt) end

---@param dt number
function IAnimationManager.OnClientFrame(dt) end

-- If given animation is running, will set its progress to the first animation frame
---@param beginholdAnim string
function IAnimationManager.ResetAnimation(beginholdAnim) end

---@param trigger AnimFrameCallback
function IAnimationManager.RegisterFrameCallback(trigger) end


