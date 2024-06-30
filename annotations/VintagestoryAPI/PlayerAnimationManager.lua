---@meta

---@class PlayerAnimationManager: AnimationManager, IDisposable, AnimationManager, IAnimationManager
---@field AnimationsDirty boolean Are the animations dirty in this AnimationManager?
---@field Animator IAnimator The animator for the animation manager.
---@field HeadController EntityHeadController The entity head controller for this animator.
---@field UseFpAnmations boolean
---@field lastRunningHeldHitAnimation string
---@field lastRunningHeldUseAnimation string
---@field ActiveAnimationsByAnimCode table The list of currently active animations that should be playing
---@field Triggers table
PlayerAnimationManager = {}

---@return PlayerAnimationManager
function PlayerAnimationManager.ctor() end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param entity Entity The basic class for all entities in the game
function PlayerAnimationManager.Init(api, entity) end

---@param dt number
function PlayerAnimationManager.OnClientFrame(dt) end

---@param animCode string
function PlayerAnimationManager.ResetAnimation(animCode) end

---@param configCode string
---@return boolean
function PlayerAnimationManager.StartAnimation(configCode) end

---@param animdata AnimationMetaData
---@return boolean
function PlayerAnimationManager.StartAnimation(animdata) end

---@param trigger AnimFrameCallback
function PlayerAnimationManager.RegisterFrameCallback(trigger) end

---@param code string
function PlayerAnimationManager.StopAnimation(code) end

---@param code string
function PlayerAnimationManager.StopSelfAnimation(code) end

---@param anims string
---@return boolean
function PlayerAnimationManager.IsAnimationActive(anims) end

---@param anim string
---@return RunningAnimation
function PlayerAnimationManager.GetAnimationState(anim) end

---@param anim string
---@param untilProgress? number
---@return boolean
function PlayerAnimationManager.IsAnimationActiveOrRunning(anim, untilProgress) end

---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function PlayerAnimationManager.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

---@param slot ItemSlot The default item slot to item stacks
function PlayerAnimationManager.OnActiveSlotChanged(slot) end

---@param heldReadyAnim string
---@param force? boolean
function PlayerAnimationManager.StartHeldReadyAnim(heldReadyAnim, force) end

---@param animCode string
function PlayerAnimationManager.StartHeldUseAnim(animCode) end

---@param animCode string
function PlayerAnimationManager.StartHeldHitAnim(animCode) end

---@param animCode string
function PlayerAnimationManager.StartRightHeldIdleAnim(animCode) end

---@param animCode string
function PlayerAnimationManager.StartLeftHeldIdleAnim(animCode) end

function PlayerAnimationManager.StopHeldReadyAnim() end

function PlayerAnimationManager.StopHeldUseAnim() end

function PlayerAnimationManager.StopHeldAttackAnim() end

function PlayerAnimationManager.StopRightHeldIdleAnim() end

function PlayerAnimationManager.StopLeftHeldIdleAnim() end

---@return boolean
function PlayerAnimationManager.IsHeldHitAuthoritative() end

---@param anim string
---@return boolean
function PlayerAnimationManager.IsAuthoritative(anim) end

---@return boolean
function PlayerAnimationManager.IsHeldUseActive() end

---@param untilProgress? number
---@return boolean
function PlayerAnimationManager.IsHeldHitActive(untilProgress) end

---@return boolean
function PlayerAnimationManager.IsLeftHeldActive() end

---@return boolean
function PlayerAnimationManager.IsRightHeldActive() end

---@return boolean
function PlayerAnimationManager.IsRightHeldReadyActive() end

---@param nowHeldRightReadyAnim string
---@return boolean
function PlayerAnimationManager.HeldRightReadyAnimChanged(nowHeldRightReadyAnim) end

---@param nowHeldRightUseAnim string
---@return boolean
function PlayerAnimationManager.HeldUseAnimChanged(nowHeldRightUseAnim) end

---@param nowHeldRightHitAnim string
---@return boolean
function PlayerAnimationManager.HeldHitAnimChanged(nowHeldRightHitAnim) end

---@param nowHeldRightIdleAnim string
---@return boolean
function PlayerAnimationManager.RightHeldIdleChanged(nowHeldRightIdleAnim) end

---@param nowHeldLeftIdleAnim string
---@return boolean
function PlayerAnimationManager.LeftHeldIdleChanged(nowHeldLeftIdleAnim) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param version string
function PlayerAnimationManager.FromAttributes(tree, version) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param forClient boolean
function PlayerAnimationManager.ToAttributes(tree, forClient) end

---@return boolean
function PlayerAnimationManager.get_AnimationsDirty() end

---@param value boolean
function PlayerAnimationManager.set_AnimationsDirty(value) end

---@return IAnimator
function PlayerAnimationManager.get_Animator() end

---@param value IAnimator
function PlayerAnimationManager.set_Animator(value) end

---@return EntityHeadController
function PlayerAnimationManager.get_HeadController() end

---@param value EntityHeadController
function PlayerAnimationManager.set_HeadController(value) end

-- The event fired at each server tick.
---@param dt number
function PlayerAnimationManager.OnServerTick(dt) end

-- Disposes of the animation manager.
function PlayerAnimationManager.Dispose() end

---@param code string
function PlayerAnimationManager.OnAnimationStopped(code) end

---@return userdata
function PlayerAnimationManager.GetType() end

---@return string
function PlayerAnimationManager.ToString() end

---@param obj userdata
---@return boolean
function PlayerAnimationManager.Equals(obj) end

---@return number
function PlayerAnimationManager.GetHashCode() end


