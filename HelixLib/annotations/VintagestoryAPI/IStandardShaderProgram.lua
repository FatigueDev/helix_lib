---@meta

---@class IStandardShaderProgram:  IDisposable, IShaderProgram
---@field Tex2D number The texture 2D for this mesh.
---@field ShadowMapNear2D number The shadowmap ID for nearby shadows.
---@field ShadowMapFar2D number The shadowmap ID for far away shadows.
---@field NormalShaded number
---@field ZNear number The Near plane distance.
---@field ZFar number The far plane distance.
---@field AlphaTest number The shader will discard things below this threshold.
---@field DamageEffect number
---@field ExtraZOffset number
---@field ExtraGodray number
---@field RgbaAmbientIn Vec3f The color of the ambient light source.
---@field RgbaLightIn Vec4f The color of the general light.
---@field RgbaGlowIn Vec4f The color of the glow light.
---@field RgbaFogIn Vec4f The color of the fog.
---@field RgbaTint Vec4f The color of the tint.
---@field FogMinIn number The minimum distance for fog.
---@field FogDensityIn number The density level of the fog.
---@field ProjectionMatrix number The projection matrix.
---@field ModelMatrix number The model Matrix.
---@field ViewMatrix number The view matrix.
---@field ExtraGlow number
---@field ToShadowMapSpaceMatrixFar number The matrix for converting the vertex position from world space to far shadow space as supplied by IRenderAPI.CurrentShadowProjectionMatrix.
---@field ToShadowMapSpaceMatrixNear number The matrix for converting the vertex position from world space to near shadow space as supplied by IRenderAPI.CurrentShadowProjectionMatrix.
---@field WaterWaveCounter number Required for water waving meshes.  Supplied the water counter as supplied as IRenderAPI.WaterWaveCounter.
---@field DontWarpVertices number The position of the player.
---@field AddRenderFlags number
---@field Tex2dOverlay2D number
---@field OverlayOpacity number
---@field SsaoAttn number
---@field OverlayTextureSize Vec2f
---@field BaseTextureSize Vec2f
---@field BaseUvOrigin Vec2f
IStandardShaderProgram = {}


---@param value number
function IStandardShaderProgram.set_Tex2D(value) end

---@param value number
function IStandardShaderProgram.set_ShadowMapNear2D(value) end

---@param value number
function IStandardShaderProgram.set_ShadowMapFar2D(value) end

---@param value number
function IStandardShaderProgram.set_NormalShaded(value) end

---@param value number
function IStandardShaderProgram.set_ZNear(value) end

---@param value number
function IStandardShaderProgram.set_ZFar(value) end

---@param value number
function IStandardShaderProgram.set_AlphaTest(value) end

---@param value number
function IStandardShaderProgram.set_DamageEffect(value) end

---@param value number
function IStandardShaderProgram.set_ExtraZOffset(value) end

---@param value number
function IStandardShaderProgram.set_ExtraGodray(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IStandardShaderProgram.set_RgbaAmbientIn(value) end

---@param value Vec4f
function IStandardShaderProgram.set_RgbaLightIn(value) end

---@param value Vec4f
function IStandardShaderProgram.set_RgbaGlowIn(value) end

---@param value Vec4f
function IStandardShaderProgram.set_RgbaFogIn(value) end

---@param value Vec4f
function IStandardShaderProgram.set_RgbaTint(value) end

---@param value number
function IStandardShaderProgram.set_FogMinIn(value) end

---@param value number
function IStandardShaderProgram.set_FogDensityIn(value) end

---@param value number
function IStandardShaderProgram.set_ProjectionMatrix(value) end

---@param value number
function IStandardShaderProgram.set_ModelMatrix(value) end

---@param value number
function IStandardShaderProgram.set_ViewMatrix(value) end

---@param value number
function IStandardShaderProgram.set_ExtraGlow(value) end

---@param value number
function IStandardShaderProgram.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function IStandardShaderProgram.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function IStandardShaderProgram.set_WaterWaveCounter(value) end

---@param value number
function IStandardShaderProgram.set_DontWarpVertices(value) end

---@param value number
function IStandardShaderProgram.set_AddRenderFlags(value) end

---@param value number
function IStandardShaderProgram.set_Tex2dOverlay2D(value) end

---@param value number
function IStandardShaderProgram.set_OverlayOpacity(value) end

---@param value number
function IStandardShaderProgram.set_SsaoAttn(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function IStandardShaderProgram.set_OverlayTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function IStandardShaderProgram.set_BaseTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function IStandardShaderProgram.set_BaseUvOrigin(value) end


