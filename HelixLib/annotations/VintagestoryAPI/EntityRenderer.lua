---@meta

-- Base class for entity rendering
---@class EntityRenderer
---@field entity Entity The current entity
---@field capi ICoreClientAPI A reference to the client api
EntityRenderer = {}

---@param entity Entity The basic class for all entities in the game
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return EntityRenderer
function EntityRenderer.ctor(entity, api) end

-- Called when the entity is now fully either spawned or fully loaded
function EntityRenderer.OnEntityLoaded() end

-- Draw call with no shader initialized
---@param dt number
---@param isShadowPass boolean
function EntityRenderer.DoRender3DOpaque(dt, isShadowPass) end

-- Draw call with the Entityanimated shader loaded and initialized with the correct color/fog/sunlight/texture values
-- If shadows are enabled, then this method is called again with shadowmap shader intialized
---@param dt number
---@param isShadowPass boolean
function EntityRenderer.DoRender3DOpaqueBatched(dt, isShadowPass) end

---@param dt number
---@param isShadowPass boolean
function EntityRenderer.DoRender3DAfterOIT(dt, isShadowPass) end

-- Ortho mode draw call for 2d gui stuff, like name tags. Gui shader initialized already.
---@param dt number
function EntityRenderer.DoRender2D(dt) end

-- Called before gui rendering starts. Drawing of the whole model into a gui dialog. Gui shader initialized already.
---@param dt number
---@param posX number
---@param posY number
---@param posZ number
---@param yawDelta number
---@param size number
function EntityRenderer.RenderToGui(dt, posX, posY, posZ, yawDelta, size) end

-- Called before in-world rendering starts
---@param dt number
function EntityRenderer.BeforeRender(dt) end

-- Should free up all the resources
function EntityRenderer.Dispose() end

-- Render call for the transparent pass
---@param dt number
function EntityRenderer.DoRender3DOIT(dt) end

-- Batched render call for the transparent pass
---@param dt number
function EntityRenderer.DoRender3DOITBatched(dt) end

---@return userdata
function EntityRenderer.GetType() end

---@return string
function EntityRenderer.ToString() end

---@param obj userdata
---@return boolean
function EntityRenderer.Equals(obj) end

---@return number
function EntityRenderer.GetHashCode() end


