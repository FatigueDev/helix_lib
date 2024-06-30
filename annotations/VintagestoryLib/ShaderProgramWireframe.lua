---@meta

---@class ShaderProgramWireframe: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ColorIn Vec4f
---@field Origin Vec3f
---@field ExtraGlow number
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
ShaderProgramWireframe = {}

---@return ShaderProgramWireframe
function ShaderProgramWireframe.ctor() end

---@param value number
function ShaderProgramWireframe.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramWireframe.set_ModelViewMatrix(value) end

---@param value Vec4f
function ShaderProgramWireframe.set_ColorIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWireframe.set_Origin(value) end

---@param value number
function ShaderProgramWireframe.set_ExtraGlow(value) end

---@param value number
function ShaderProgramWireframe.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramWireframe.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramWireframe.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramWireframe.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramWireframe.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramWireframe.set_FlatFogStart(value) end

---@param value number
function ShaderProgramWireframe.set_ViewDistance(value) end

---@param value number
function ShaderProgramWireframe.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramWireframe.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramWireframe.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramWireframe.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramWireframe.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramWireframe.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramWireframe.set_TimeCounter(value) end

---@param value number
function ShaderProgramWireframe.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramWireframe.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramWireframe.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramWireframe.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWireframe.set_Playerpos(value) end

---@param value number
function ShaderProgramWireframe.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramWireframe.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramWireframe.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramWireframe.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramWireframe.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramWireframe.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramWireframe.Compile() end

---@return boolean
function ShaderProgramWireframe.get_Disposed() end

---@return boolean
function ShaderProgramWireframe.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramWireframe.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramWireframe.get_LoadError() end

---@param value boolean
function ShaderProgramWireframe.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramWireframe.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWireframe.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWireframe.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramWireframe.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWireframe.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramWireframe.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramWireframe.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramWireframe.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramWireframe.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramWireframe.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramWireframe.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramWireframe.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramWireframe.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramWireframe.Use() end

function ShaderProgramWireframe.Stop() end

function ShaderProgramWireframe.Dispose() end

---@return userdata
function ShaderProgramWireframe.GetType() end

---@return string
function ShaderProgramWireframe.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramWireframe.Equals(obj) end

---@return number
function ShaderProgramWireframe.GetHashCode() end


