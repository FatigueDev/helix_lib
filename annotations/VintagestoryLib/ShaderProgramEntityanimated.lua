---@meta

---@class ShaderProgramEntityanimated: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field EntityTex2D number
---@field AlphaTest number
---@field GlitchEffectStrength number
---@field EntityId number
---@field GlitchFlicker number
---@field DepthOffset number
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field ZNear number
---@field ZFar number
---@field LightPosition Vec3f
---@field ShadowIntensity number
---@field ShadowMapFar2D number
---@field ShadowMapWidthInv number
---@field ShadowMapHeightInv number
---@field ShadowMapNear2D number
---@field WindWaveCounter number
---@field GlitchStrength number
---@field RgbaAmbientIn Vec3f
---@field RgbaLightIn Vec4f
---@field RgbaFogIn Vec4f
---@field FogMinIn number
---@field FogDensityIn number
---@field RenderColor Vec4f
---@field AddRenderFlags number
---@field FrostAlpha number
---@field ProjectionMatrix number
---@field ViewMatrix number
---@field ModelMatrix number
---@field ExtraGlow number
---@field SkipRenderJointId number
---@field SkipRenderJointId2 number
---@field ElementTransforms number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
---@field TimeCounter number
---@field WindWaveCounterHighFreq number
---@field WaterWaveCounter number
---@field WindSpeed number
---@field Playerpos Vec3f
---@field GlobalWarpIntensity number
---@field GlitchWaviness number
---@field WindWaveIntensity number
---@field WaterWaveIntensity number
---@field PerceptionEffectId number
---@field PerceptionEffectIntensity number
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
ShaderProgramEntityanimated = {}

---@return ShaderProgramEntityanimated
function ShaderProgramEntityanimated.ctor() end

---@param value number
function ShaderProgramEntityanimated.set_EntityTex2D(value) end

---@param value number
function ShaderProgramEntityanimated.set_AlphaTest(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlitchEffectStrength(value) end

---@param value number
function ShaderProgramEntityanimated.set_EntityId(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlitchFlicker(value) end

---@param value number
function ShaderProgramEntityanimated.set_DepthOffset(value) end

---@param value number
function ShaderProgramEntityanimated.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramEntityanimated.set_FlatFogStart(value) end

---@param value number
function ShaderProgramEntityanimated.set_ViewDistance(value) end

---@param value number
function ShaderProgramEntityanimated.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramEntityanimated.set_ZNear(value) end

---@param value number
function ShaderProgramEntityanimated.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramEntityanimated.set_LightPosition(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramEntityanimated.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlitchStrength(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramEntityanimated.set_RgbaAmbientIn(value) end

---@param value Vec4f
function ShaderProgramEntityanimated.set_RgbaLightIn(value) end

---@param value Vec4f
function ShaderProgramEntityanimated.set_RgbaFogIn(value) end

---@param value number
function ShaderProgramEntityanimated.set_FogMinIn(value) end

---@param value number
function ShaderProgramEntityanimated.set_FogDensityIn(value) end

---@param value Vec4f
function ShaderProgramEntityanimated.set_RenderColor(value) end

---@param value number
function ShaderProgramEntityanimated.set_AddRenderFlags(value) end

---@param value number
function ShaderProgramEntityanimated.set_FrostAlpha(value) end

---@param value number
function ShaderProgramEntityanimated.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramEntityanimated.set_ViewMatrix(value) end

---@param value number
function ShaderProgramEntityanimated.set_ModelMatrix(value) end

---@param value number
function ShaderProgramEntityanimated.set_ExtraGlow(value) end

---@param value number
function ShaderProgramEntityanimated.set_SkipRenderJointId(value) end

---@param value number
function ShaderProgramEntityanimated.set_SkipRenderJointId2(value) end

---@param value number
function ShaderProgramEntityanimated.set_ElementTransforms(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramEntityanimated.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramEntityanimated.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramEntityanimated.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramEntityanimated.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramEntityanimated.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramEntityanimated.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramEntityanimated.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramEntityanimated.set_TimeCounter(value) end

---@param value number
function ShaderProgramEntityanimated.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramEntityanimated.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramEntityanimated.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramEntityanimated.set_Playerpos(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramEntityanimated.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramEntityanimated.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramEntityanimated.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramEntityanimated.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramEntityanimated.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramEntityanimated.Compile() end

---@return boolean
function ShaderProgramEntityanimated.get_Disposed() end

---@return boolean
function ShaderProgramEntityanimated.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramEntityanimated.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramEntityanimated.get_LoadError() end

---@param value boolean
function ShaderProgramEntityanimated.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramEntityanimated.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramEntityanimated.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramEntityanimated.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramEntityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramEntityanimated.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramEntityanimated.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramEntityanimated.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramEntityanimated.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramEntityanimated.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramEntityanimated.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramEntityanimated.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramEntityanimated.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramEntityanimated.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramEntityanimated.Use() end

function ShaderProgramEntityanimated.Stop() end

function ShaderProgramEntityanimated.Dispose() end

---@return userdata
function ShaderProgramEntityanimated.GetType() end

---@return string
function ShaderProgramEntityanimated.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramEntityanimated.Equals(obj) end

---@return number
function ShaderProgramEntityanimated.GetHashCode() end


