---@meta

---@class ShaderProgramParticlescube: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
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
ShaderProgramParticlescube = {}

---@return ShaderProgramParticlescube
function ShaderProgramParticlescube.ctor() end

---@param value number
function ShaderProgramParticlescube.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramParticlescube.set_FlatFogStart(value) end

---@param value number
function ShaderProgramParticlescube.set_ViewDistance(value) end

---@param value number
function ShaderProgramParticlescube.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramParticlescube.set_ZNear(value) end

---@param value number
function ShaderProgramParticlescube.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlescube.set_LightPosition(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramParticlescube.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramParticlescube.set_GlitchStrength(value) end

---@param value Vec4f
function ShaderProgramParticlescube.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlescube.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramParticlescube.set_FogMinIn(value) end

---@param value number
function ShaderProgramParticlescube.set_FogDensityIn(value) end

---@param value number
function ShaderProgramParticlescube.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramParticlescube.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramParticlescube.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramParticlescube.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramParticlescube.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramParticlescube.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramParticlescube.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramParticlescube.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramParticlescube.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramParticlescube.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramParticlescube.set_TimeCounter(value) end

---@param value number
function ShaderProgramParticlescube.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramParticlescube.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramParticlescube.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlescube.set_Playerpos(value) end

---@param value number
function ShaderProgramParticlescube.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramParticlescube.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramParticlescube.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramParticlescube.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramParticlescube.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramParticlescube.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramParticlescube.Compile() end

---@return boolean
function ShaderProgramParticlescube.get_Disposed() end

---@return boolean
function ShaderProgramParticlescube.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramParticlescube.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramParticlescube.get_LoadError() end

---@param value boolean
function ShaderProgramParticlescube.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramParticlescube.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlescube.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlescube.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramParticlescube.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlescube.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramParticlescube.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramParticlescube.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramParticlescube.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlescube.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramParticlescube.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlescube.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlescube.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlescube.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramParticlescube.Use() end

function ShaderProgramParticlescube.Stop() end

function ShaderProgramParticlescube.Dispose() end

---@return userdata
function ShaderProgramParticlescube.GetType() end

---@return string
function ShaderProgramParticlescube.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramParticlescube.Equals(obj) end

---@return number
function ShaderProgramParticlescube.GetHashCode() end


