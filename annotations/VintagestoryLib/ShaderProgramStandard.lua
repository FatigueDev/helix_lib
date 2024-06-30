---@meta

---@class ShaderProgramStandard: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram, IStandardShaderProgram
---@field Tex2D number
---@field ExtraGodray number
---@field AlphaTest number
---@field SsaoAttn number
---@field ApplySsao number
---@field Tex2dOverlay2D number
---@field OverlayOpacity number
---@field OverlayTextureSize Vec2f
---@field BaseTextureSize Vec2f
---@field BaseUvOrigin Vec2f
---@field NormalShaded number
---@field DamageEffect number
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
---@field RgbaTint Vec4f
---@field RgbaAmbientIn Vec3f
---@field RgbaLightIn Vec4f
---@field RgbaGlowIn Vec4f
---@field RgbaFogIn Vec4f
---@field ExtraGlow number
---@field FogMinIn number
---@field FogDensityIn number
---@field ProjectionMatrix number
---@field ViewMatrix number
---@field ModelMatrix number
---@field DontWarpVertices number
---@field AddRenderFlags number
---@field ExtraZOffset number
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
ShaderProgramStandard = {}

---@return ShaderProgramStandard
function ShaderProgramStandard.ctor() end

---@param value number
function ShaderProgramStandard.set_Tex2D(value) end

---@param value number
function ShaderProgramStandard.set_ExtraGodray(value) end

---@param value number
function ShaderProgramStandard.set_AlphaTest(value) end

---@param value number
function ShaderProgramStandard.set_SsaoAttn(value) end

---@param value number
function ShaderProgramStandard.set_ApplySsao(value) end

---@param value number
function ShaderProgramStandard.set_Tex2dOverlay2D(value) end

---@param value number
function ShaderProgramStandard.set_OverlayOpacity(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_OverlayTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_BaseTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_BaseUvOrigin(value) end

---@param value number
function ShaderProgramStandard.set_NormalShaded(value) end

---@param value number
function ShaderProgramStandard.set_DamageEffect(value) end

---@param value number
function ShaderProgramStandard.set_DepthOffset(value) end

---@param value number
function ShaderProgramStandard.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramStandard.set_FlatFogStart(value) end

---@param value number
function ShaderProgramStandard.set_ViewDistance(value) end

---@param value number
function ShaderProgramStandard.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramStandard.set_ZNear(value) end

---@param value number
function ShaderProgramStandard.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_LightPosition(value) end

---@param value number
function ShaderProgramStandard.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramStandard.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramStandard.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramStandard.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramStandard.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramStandard.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramStandard.set_GlitchStrength(value) end

---@param value Vec4f
function ShaderProgramStandard.set_RgbaTint(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_RgbaAmbientIn(value) end

---@param value Vec4f
function ShaderProgramStandard.set_RgbaLightIn(value) end

---@param value Vec4f
function ShaderProgramStandard.set_RgbaGlowIn(value) end

---@param value Vec4f
function ShaderProgramStandard.set_RgbaFogIn(value) end

---@param value number
function ShaderProgramStandard.set_ExtraGlow(value) end

---@param value number
function ShaderProgramStandard.set_FogMinIn(value) end

---@param value number
function ShaderProgramStandard.set_FogDensityIn(value) end

---@param value number
function ShaderProgramStandard.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramStandard.set_ViewMatrix(value) end

---@param value number
function ShaderProgramStandard.set_ModelMatrix(value) end

---@param value number
function ShaderProgramStandard.set_DontWarpVertices(value) end

---@param value number
function ShaderProgramStandard.set_AddRenderFlags(value) end

---@param value number
function ShaderProgramStandard.set_ExtraZOffset(value) end

---@param value number
function ShaderProgramStandard.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramStandard.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramStandard.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramStandard.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramStandard.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramStandard.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramStandard.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramStandard.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramStandard.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramStandard.set_TimeCounter(value) end

---@param value number
function ShaderProgramStandard.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramStandard.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramStandard.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.set_Playerpos(value) end

---@param value number
function ShaderProgramStandard.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramStandard.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramStandard.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramStandard.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramStandard.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramStandard.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramStandard.Compile() end

---@return boolean
function ShaderProgramStandard.get_Disposed() end

---@return boolean
function ShaderProgramStandard.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramStandard.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramStandard.get_LoadError() end

---@param value boolean
function ShaderProgramStandard.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramStandard.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramStandard.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramStandard.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramStandard.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramStandard.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramStandard.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramStandard.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramStandard.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramStandard.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramStandard.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramStandard.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramStandard.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramStandard.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramStandard.Use() end

function ShaderProgramStandard.Stop() end

function ShaderProgramStandard.Dispose() end

---@return userdata
function ShaderProgramStandard.GetType() end

---@return string
function ShaderProgramStandard.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramStandard.Equals(obj) end

---@return number
function ShaderProgramStandard.GetHashCode() end


