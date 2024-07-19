---@meta

---@class ShaderProgramHelditem: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ItemTex2D number
---@field AlphaTest number
---@field Tex2dOverlay2D number
---@field OverlayOpacity number
---@field OverlayTextureSize Vec2f
---@field BaseTextureSize Vec2f
---@field BaseUvOrigin Vec2f
---@field NormalShaded number
---@field DamageEffect number
---@field LightPosition Vec3f
---@field RgbaAmbientIn Vec3f
---@field RgbaLightIn Vec4f
---@field RgbaGlowIn Vec4f
---@field ExtraGlow number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
---@field Disposed boolean
---@field ClampTexturesToEdge boolean
---@field LoadError boolean
---@field attributes table
---@field LoadFromFile boolean
---@field AssetDomain string
---@field PassId number
---@field ProgramId number
---@field PassName string
---@field VertexShader Shader
---@field GeometryShader Shader
---@field FragmentShader Shader
---@field uniformLocations table
---@field textureLocations table
---@field clampTToEdge boolean
---@field includes HashSet`1
---@field customSamplers table
ShaderProgramHelditem = {}

---@return ShaderProgramHelditem
function ShaderProgramHelditem.ctor() end

---@param value number
function ShaderProgramHelditem.set_ItemTex2D(value) end

---@param value number
function ShaderProgramHelditem.set_AlphaTest(value) end

---@param value number
function ShaderProgramHelditem.set_Tex2dOverlay2D(value) end

---@param value number
function ShaderProgramHelditem.set_OverlayOpacity(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.set_OverlayTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.set_BaseTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.set_BaseUvOrigin(value) end

---@param value number
function ShaderProgramHelditem.set_NormalShaded(value) end

---@param value number
function ShaderProgramHelditem.set_DamageEffect(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.set_LightPosition(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.set_RgbaAmbientIn(value) end

---@param value Vec4f
function ShaderProgramHelditem.set_RgbaLightIn(value) end

---@param value Vec4f
function ShaderProgramHelditem.set_RgbaGlowIn(value) end

---@param value number
function ShaderProgramHelditem.set_ExtraGlow(value) end

---@param value number
function ShaderProgramHelditem.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramHelditem.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramHelditem.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramHelditem.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramHelditem.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramHelditem.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramHelditem.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramHelditem.set_FlatFogStart(value) end

---@param value number
function ShaderProgramHelditem.set_ViewDistance(value) end

---@param value number
function ShaderProgramHelditem.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramHelditem.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramHelditem.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramHelditem.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramHelditem.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramHelditem.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramHelditem.Compile() end

---@return boolean
function ShaderProgramHelditem.get_Disposed() end

---@return boolean
function ShaderProgramHelditem.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramHelditem.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramHelditem.get_LoadError() end

---@param value boolean
function ShaderProgramHelditem.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramHelditem.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramHelditem.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramHelditem.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramHelditem.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramHelditem.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramHelditem.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramHelditem.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramHelditem.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramHelditem.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramHelditem.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramHelditem.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramHelditem.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramHelditem.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramHelditem.Use() end

function ShaderProgramHelditem.Stop() end

function ShaderProgramHelditem.Dispose() end

---@return userdata
function ShaderProgramHelditem.GetType() end

---@return string
function ShaderProgramHelditem.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramHelditem.Equals(obj) end

---@return number
function ShaderProgramHelditem.GetHashCode() end


