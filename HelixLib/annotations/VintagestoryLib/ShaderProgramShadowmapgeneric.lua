---@meta

---@class ShaderProgramShadowmapgeneric: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Tex2d2D number
---@field Origin Vec3f
---@field MvpMatrix number
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
ShaderProgramShadowmapgeneric = {}

---@return ShaderProgramShadowmapgeneric
function ShaderProgramShadowmapgeneric.ctor() end

---@param value number
function ShaderProgramShadowmapgeneric.set_Tex2d2D(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapgeneric.set_Origin(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_MvpMatrix(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_TimeCounter(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapgeneric.set_Playerpos(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramShadowmapgeneric.set_PerceptionEffectIntensity(value) end

---@return boolean
function ShaderProgramShadowmapgeneric.Compile() end

---@return boolean
function ShaderProgramShadowmapgeneric.get_Disposed() end

---@return boolean
function ShaderProgramShadowmapgeneric.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramShadowmapgeneric.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramShadowmapgeneric.get_LoadError() end

---@param value boolean
function ShaderProgramShadowmapgeneric.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramShadowmapgeneric.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapgeneric.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapgeneric.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramShadowmapgeneric.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapgeneric.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramShadowmapgeneric.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramShadowmapgeneric.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramShadowmapgeneric.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramShadowmapgeneric.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramShadowmapgeneric.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramShadowmapgeneric.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramShadowmapgeneric.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramShadowmapgeneric.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramShadowmapgeneric.Use() end

function ShaderProgramShadowmapgeneric.Stop() end

function ShaderProgramShadowmapgeneric.Dispose() end

---@return userdata
function ShaderProgramShadowmapgeneric.GetType() end

---@return string
function ShaderProgramShadowmapgeneric.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramShadowmapgeneric.Equals(obj) end

---@return number
function ShaderProgramShadowmapgeneric.GetHashCode() end


