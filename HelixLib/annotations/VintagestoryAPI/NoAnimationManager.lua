---@meta

-- A No-Animation Manager built off of IAnimationManager.
---@class NoAnimationManager:  IDisposable, IAnimationManager
---@field Animator IAnimator
---@field AnimationsDirty boolean
---@field ActiveAnimationsByAnimCode table
---@field HeadController EntityHeadController
NoAnimationManager = {}

---@return NoAnimationManager
function NoAnimationManager.ctor() end

---@return IAnimator
function NoAnimationManager.get_Animator() end

---@param value IAnimator
function NoAnimationManager.set_Animator(value) end

---@return boolean
function NoAnimationManager.get_AnimationsDirty() end

---@param value boolean
function NoAnimationManager.set_AnimationsDirty(value) end

---@return table
function NoAnimationManager.get_ActiveAnimationsByAnimCode() end

---@return EntityHeadController
function NoAnimationManager.get_HeadController() end

---@param value EntityHeadController
function NoAnimationManager.set_HeadController(value) end

function NoAnimationManager.Dispose() end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param version string
function NoAnimationManager.FromAttributes(tree, version) end

---@param anim string
---@return RunningAnimation
function NoAnimationManager.GetAnimationState(anim) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param entity Entity The basic class for all entities in the game
function NoAnimationManager.Init(api, entity) end

---@param anims string
---@return boolean
function NoAnimationManager.IsAnimationActive(anims) end

---@param code string
function NoAnimationManager.OnAnimationStopped(code) end

---@param dt number
function NoAnimationManager.OnClientFrame(dt) end

---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function NoAnimationManager.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

---@param dt number
function NoAnimationManager.OnServerTick(dt) end

---@param trigger AnimFrameCallback
function NoAnimationManager.RegisterFrameCallback(trigger) end

---@param beginholdAnim string
function NoAnimationManager.ResetAnimation(beginholdAnim) end

---@param animdata AnimationMetaData
---@return boolean
function NoAnimationManager.StartAnimation(animdata) end

---@param configCode string
---@return boolean
function NoAnimationManager.StartAnimation(configCode) end

---@param code string
function NoAnimationManager.StopAnimation(code) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function NoAnimationManager.ToAttributes(tree, forClient) end

---@return userdata
function NoAnimationManager.GetType() end

---@return string
function NoAnimationManager.ToString() end

---@param obj userdata
---@return boolean
function NoAnimationManager.Equals(obj) end

---@return number
function NoAnimationManager.GetHashCode() end


