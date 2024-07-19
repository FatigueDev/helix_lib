---@meta

---@class ShaderProgramDecals: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field DecalTexture2D number
---@field BlockTexture2D number
---@field RgbaFogIn Vec4f
---@field RgbaAmbientIn Vec3f
---@field FogDensityIn number
---@field FogMinIn number
---@field Origin Vec3f
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
---@field TimeCounter number
---@field WindWaveCounter number
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
ShaderProgramDecals = {}

---@return ShaderProgramDecals
function ShaderProgramDecals.ctor() end

---@param value number
function ShaderProgramDecals.set_DecalTexture2D(value) end

---@param value number
function ShaderProgramDecals.set_BlockTexture2D(value) end

---@param value Vec4f
function ShaderProgramDecals.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDecals.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramDecals.set_FogDensityIn(value) end

---@param value number
function ShaderProgramDecals.set_FogMinIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDecals.set_Origin(value) end

---@param value number
function ShaderProgramDecals.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramDecals.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramDecals.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramDecals.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramDecals.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramDecals.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramDecals.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramDecals.set_FlatFogStart(value) end

---@param value number
function ShaderProgramDecals.set_ViewDistance(value) end

---@param value number
function ShaderProgramDecals.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramDecals.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramDecals.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramDecals.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramDecals.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramDecals.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramDecals.set_TimeCounter(value) end

---@param value number
function ShaderProgramDecals.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramDecals.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramDecals.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramDecals.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDecals.set_Playerpos(value) end

---@param value number
function ShaderProgramDecals.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramDecals.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramDecals.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramDecals.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramDecals.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramDecals.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramDecals.Compile() end

---@return boolean
function ShaderProgramDecals.get_Disposed() end

---@return boolean
function ShaderProgramDecals.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramDecals.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramDecals.get_LoadError() end

---@param value boolean
function ShaderProgramDecals.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramDecals.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDecals.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDecals.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramDecals.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDecals.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramDecals.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramDecals.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramDecals.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramDecals.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramDecals.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramDecals.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramDecals.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramDecals.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramDecals.Use() end

function ShaderProgramDecals.Stop() end

function ShaderProgramDecals.Dispose() end

---@return userdata
function ShaderProgramDecals.GetType() end

---@return string
function ShaderProgramDecals.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramDecals.Equals(obj) end

---@return number
function ShaderProgramDecals.GetHashCode() end


