---@meta

---@class AnimatableRenderer:  IDisposable, IRenderer
---@field RenderOrder number
---@field RenderRange number
---@field mtmeshref MultiTextureMeshRef
---@field meshref MeshRef
---@field textureId number
---@field ModelMat number
---@field ShouldRender boolean
---@field StabilityAffected boolean
---@field LightAffected boolean
---@field FogAffectedness number
---@field rotationDeg Vec3f
---@field ScaleX number
---@field ScaleY number
---@field ScaleZ number
---@field renderColor Vec4f
---@field backfaceCulling boolean
AnimatableRenderer = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param rotationDeg Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param animator AnimatorBase Syncs every frame with entity.ActiveAnimationsByAnimCode, starts, progresses and stops animations when necessary 
---@param activeAnimationsByAnimCode table
---@param meshref MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureId number
---@param renderStage? EnumRenderStage
---@return AnimatableRenderer
function AnimatableRenderer.ctor(capi, pos, rotationDeg, animator, activeAnimationsByAnimCode, meshref, textureId, renderStage) end
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param rotationDeg Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param animator AnimatorBase Syncs every frame with entity.ActiveAnimationsByAnimCode, starts, progresses and stops animations when necessary 
---@param activeAnimationsByAnimCode table
---@param meshref MultiTextureMeshRef
---@param renderStage? EnumRenderStage
---@return AnimatableRenderer
function AnimatableRenderer.ctor(capi, pos, rotationDeg, animator, activeAnimationsByAnimCode, meshref, renderStage) end

---@return number
function AnimatableRenderer.get_RenderOrder() end

---@return number
function AnimatableRenderer.get_RenderRange() end

---@param dt number
---@param stage EnumRenderStage
function AnimatableRenderer.OnRenderFrame(dt, stage) end

function AnimatableRenderer.Dispose() end

---@return userdata
function AnimatableRenderer.GetType() end

---@return string
function AnimatableRenderer.ToString() end

---@param obj userdata
---@return boolean
function AnimatableRenderer.Equals(obj) end

---@return number
function AnimatableRenderer.GetHashCode() end


