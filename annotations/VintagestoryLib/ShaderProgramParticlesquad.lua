---@meta

---@class ShaderProgramParticlesquad: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ParticleTex2D number
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
---@field RgbaFogIn Vec4f
---@field RgbaAmbientIn Vec3f
---@field FogMinIn number
---@field FogDensityIn number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
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
ShaderProgramParticlesquad = {}

---@return ShaderProgramParticlesquad
function ShaderProgramParticlesquad.ctor() end

---@param value number
function ShaderProgramParticlesquad.set_ParticleTex2D(value) end

---@param value number
function ShaderProgramParticlesquad.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramParticlesquad.set_FlatFogStart(value) end

---@param value number
function ShaderProgramParticlesquad.set_ViewDistance(value) end

---@param value number
function ShaderProgramParticlesquad.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramParticlesquad.set_ZNear(value) end

---@param value number
function ShaderProgramParticlesquad.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad.set_LightPosition(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramParticlesquad.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramParticlesquad.set_GlitchStrength(value) end

---@param value Vec4f
function ShaderProgramParticlesquad.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramParticlesquad.set_FogMinIn(value) end

---@param value number
function ShaderProgramParticlesquad.set_FogDensityIn(value) end

---@param value number
function ShaderProgramParticlesquad.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramParticlesquad.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramParticlesquad.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramParticlesquad.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramParticlesquad.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramParticlesquad.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramParticlesquad.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramParticlesquad.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramParticlesquad.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramParticlesquad.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramParticlesquad.set_TimeCounter(value) end

---@param value number
function ShaderProgramParticlesquad.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramParticlesquad.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramParticlesquad.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad.set_Playerpos(value) end

---@param value number
function ShaderProgramParticlesquad.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramParticlesquad.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramParticlesquad.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramParticlesquad.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramParticlesquad.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramParticlesquad.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramParticlesquad.Compile() end

---@return boolean
function ShaderProgramParticlesquad.get_Disposed() end

---@return boolean
function ShaderProgramParticlesquad.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramParticlesquad.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramParticlesquad.get_LoadError() end

---@param value boolean
function ShaderProgramParticlesquad.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramParticlesquad.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramParticlesquad.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramParticlesquad.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramParticlesquad.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramParticlesquad.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlesquad.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramParticlesquad.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlesquad.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlesquad.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlesquad.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramParticlesquad.Use() end

function ShaderProgramParticlesquad.Stop() end

function ShaderProgramParticlesquad.Dispose() end

---@return userdata
function ShaderProgramParticlesquad.GetType() end

---@return string
function ShaderProgramParticlesquad.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramParticlesquad.Equals(obj) end

---@return number
function ShaderProgramParticlesquad.GetHashCode() end


