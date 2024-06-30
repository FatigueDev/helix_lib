---@meta

---@class ShaderProgramBlockhighlights: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
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
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
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
ShaderProgramBlockhighlights = {}

---@return ShaderProgramBlockhighlights
function ShaderProgramBlockhighlights.ctor() end

---@param value number
function ShaderProgramBlockhighlights.set_ParticleTex2D(value) end

---@param value number
function ShaderProgramBlockhighlights.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramBlockhighlights.set_FlatFogStart(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ViewDistance(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ZNear(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlockhighlights.set_LightPosition(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramBlockhighlights.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramBlockhighlights.set_GlitchStrength(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramBlockhighlights.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramBlockhighlights.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramBlockhighlights.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramBlockhighlights.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramBlockhighlights.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramBlockhighlights.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramBlockhighlights.Compile() end

---@return boolean
function ShaderProgramBlockhighlights.get_Disposed() end

---@return boolean
function ShaderProgramBlockhighlights.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramBlockhighlights.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramBlockhighlights.get_LoadError() end

---@param value boolean
function ShaderProgramBlockhighlights.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramBlockhighlights.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlockhighlights.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlockhighlights.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramBlockhighlights.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlockhighlights.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramBlockhighlights.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramBlockhighlights.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramBlockhighlights.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlockhighlights.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramBlockhighlights.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlockhighlights.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlockhighlights.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlockhighlights.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramBlockhighlights.Use() end

function ShaderProgramBlockhighlights.Stop() end

function ShaderProgramBlockhighlights.Dispose() end

---@return userdata
function ShaderProgramBlockhighlights.GetType() end

---@return string
function ShaderProgramBlockhighlights.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramBlockhighlights.Equals(obj) end

---@return number
function ShaderProgramBlockhighlights.GetHashCode() end


