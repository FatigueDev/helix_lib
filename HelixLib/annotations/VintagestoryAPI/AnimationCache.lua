---@meta

---@class AnimationCache
AnimationCache = {}


-- Clears the animation cache.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function AnimationCache.ClearCache(api) end

-- Clears the animation cache.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param entity Entity The basic class for all entities in the game
function AnimationCache.ClearCache(api, entity) end

-- Initializes the cache to the Animation Manager then spits it back out.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param manager IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
---@param entity Entity The basic class for all entities in the game
---@param entityShape Shape The base shape for all json objects.
---@param copyOverAnims RunningAnimation[]
---@param requireJointsForElements string
---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function AnimationCache.InitManager(api, manager, entity, entityShape, copyOverAnims, requireJointsForElements) end

---@return userdata
function AnimationCache.GetType() end

---@return string
function AnimationCache.ToString() end

---@param obj userdata
---@return boolean
function AnimationCache.Equals(obj) end

---@return number
function AnimationCache.GetHashCode() end


