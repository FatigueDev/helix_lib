---@meta

---@class ShaderProgramAutocamera: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
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
ShaderProgramAutocamera = {}

---@return ShaderProgramAutocamera
function ShaderProgramAutocamera.ctor() end

---@param value number
function ShaderProgramAutocamera.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramAutocamera.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramAutocamera.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramAutocamera.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramAutocamera.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramAutocamera.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramAutocamera.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramAutocamera.set_FlatFogStart(value) end

---@param value number
function ShaderProgramAutocamera.set_ViewDistance(value) end

---@param value number
function ShaderProgramAutocamera.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramAutocamera.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramAutocamera.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramAutocamera.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramAutocamera.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramAutocamera.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramAutocamera.Compile() end

---@return boolean
function ShaderProgramAutocamera.get_Disposed() end

---@return boolean
function ShaderProgramAutocamera.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramAutocamera.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramAutocamera.get_LoadError() end

---@param value boolean
function ShaderProgramAutocamera.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramAutocamera.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramAutocamera.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramAutocamera.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramAutocamera.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramAutocamera.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramAutocamera.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramAutocamera.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramAutocamera.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramAutocamera.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramAutocamera.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramAutocamera.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramAutocamera.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramAutocamera.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramAutocamera.Use() end

function ShaderProgramAutocamera.Stop() end

function ShaderProgramAutocamera.Dispose() end

---@return userdata
function ShaderProgramAutocamera.GetType() end

---@return string
function ShaderProgramAutocamera.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramAutocamera.Equals(obj) end

---@return number
function ShaderProgramAutocamera.GetHashCode() end


