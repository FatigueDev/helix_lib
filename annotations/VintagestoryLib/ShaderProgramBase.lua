---@meta

---@class ShaderProgramBase:  IDisposable, IShaderProgram
---@field Disposed boolean
---@field ClampTexturesToEdge boolean
---@field LoadError boolean
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
---@field shadowmapQuality number
---@field CurrentShaderProgram ShaderProgramBase
ShaderProgramBase = {}


---@return boolean
function ShaderProgramBase.get_Disposed() end

---@return boolean
function ShaderProgramBase.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramBase.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramBase.get_LoadError() end

---@param value boolean
function ShaderProgramBase.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramBase.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBase.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBase.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramBase.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBase.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramBase.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramBase.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramBase.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBase.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramBase.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBase.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBase.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBase.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramBase.Use() end

function ShaderProgramBase.Stop() end

function ShaderProgramBase.Dispose() end

---@return boolean
function ShaderProgramBase.Compile() end

---@return userdata
function ShaderProgramBase.GetType() end

---@return string
function ShaderProgramBase.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramBase.Equals(obj) end

---@return number
function ShaderProgramBase.GetHashCode() end


