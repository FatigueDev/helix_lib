---@meta

---@class AnimationUtil:  IDisposable, IRenderer
---@field RenderOrder number
---@field RenderRange number
---@field animator AnimatorBase
---@field renderer AnimatableRenderer
---@field activeAnimationsByAnimCode table
AnimationUtil = {}

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return AnimationUtil
function AnimationUtil.ctor(api, position) end

---@return number
function AnimationUtil.get_RenderOrder() end

---@return number
function AnimationUtil.get_RenderRange() end

---@param cacheDictKey string
---@param shape Shape The base shape for all json objects.
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param meshdata MeshData&
function AnimationUtil.InitializeShapeAndAnimator(cacheDictKey, shape, texSource, rotation, meshdata) end

---@param cacheDictKey string
---@param meshdata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param shape Shape The base shape for all json objects.
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param renderStage? EnumRenderStage
function AnimationUtil.InitializeAnimator(cacheDictKey, meshdata, shape, rotation, renderStage) end

---@param cacheDictKey string
---@param meshref MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param blockShape Shape The base shape for all json objects.
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param renderStage? EnumRenderStage
function AnimationUtil.InitializeAnimator(cacheDictKey, meshref, blockShape, rotation, renderStage) end

---@param cacheDictKey string
---@param meshref MultiTextureMeshRef
---@param blockShape Shape The base shape for all json objects.
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param renderStage? EnumRenderStage
function AnimationUtil.InitializeAnimator(cacheDictKey, meshref, blockShape, rotation, renderStage) end

---@param cacheDictKey string
---@param blockShape Shape The base shape for all json objects.
function AnimationUtil.InitializeAnimatorServer(cacheDictKey, blockShape) end

---@param deltaTime number
function AnimationUtil.AnimationTickServer(deltaTime) end

---@param deltaTime number
---@param stage EnumRenderStage
function AnimationUtil.OnRenderFrame(deltaTime, stage) end

---@param meta AnimationMetaData
---@return boolean
function AnimationUtil.StartAnimation(meta) end

---@param code string
function AnimationUtil.StopAnimation(code) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param cacheDictKey string
---@param shape Shape The base shape for all json objects.
---@return AnimatorBase # Syncs every frame with entity.ActiveAnimationsByAnimCode, starts, progresses and stops animations when necessary 
function AnimationUtil.GetAnimator(api, cacheDictKey, shape) end

---@param elements ShapeElement[] A shape element built from JSON data within the model.
function AnimationUtil.CacheInvTransforms(elements) end

function AnimationUtil.Dispose() end

---@return userdata
function AnimationUtil.GetType() end

---@return string
function AnimationUtil.ToString() end

---@param obj userdata
---@return boolean
function AnimationUtil.Equals(obj) end

---@return number
function AnimationUtil.GetHashCode() end


