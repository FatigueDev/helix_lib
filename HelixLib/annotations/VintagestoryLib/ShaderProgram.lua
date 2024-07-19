---@meta

---@class ShaderProgram: ShaderProgramBase, IDisposable, ShaderProgramBase, IShaderProgram
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
ShaderProgram = {}

---@return ShaderProgram
function ShaderProgram.ctor() end

---@return boolean
function ShaderProgram.Compile() end

---@return boolean
function ShaderProgram.get_Disposed() end

---@return boolean
function ShaderProgram.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgram.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgram.get_LoadError() end

---@param value boolean
function ShaderProgram.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgram.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgram.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgram.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgram.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgram.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgram.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgram.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgram.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgram.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgram.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgram.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgram.UniformMatrices(uniformName, count, matrix) end

function ShaderProgram.Use() end

function ShaderProgram.Stop() end

function ShaderProgram.Dispose() end

---@return userdata
function ShaderProgram.GetType() end

---@return string
function ShaderProgram.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgram.Equals(obj) end

---@return number
function ShaderProgram.GetHashCode() end


