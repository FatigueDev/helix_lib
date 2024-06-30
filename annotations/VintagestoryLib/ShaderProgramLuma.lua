---@meta

---@class ShaderProgramLuma: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Scene2D number
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
ShaderProgramLuma = {}

---@return ShaderProgramLuma
function ShaderProgramLuma.ctor() end

---@param value number
function ShaderProgramLuma.set_Scene2D(value) end

---@return boolean
function ShaderProgramLuma.Compile() end

---@return boolean
function ShaderProgramLuma.get_Disposed() end

---@return boolean
function ShaderProgramLuma.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramLuma.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramLuma.get_LoadError() end

---@param value boolean
function ShaderProgramLuma.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramLuma.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramLuma.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramLuma.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramLuma.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramLuma.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramLuma.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramLuma.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramLuma.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramLuma.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramLuma.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramLuma.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramLuma.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramLuma.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramLuma.Use() end

function ShaderProgramLuma.Stop() end

function ShaderProgramLuma.Dispose() end

---@return userdata
function ShaderProgramLuma.GetType() end

---@return string
function ShaderProgramLuma.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramLuma.Equals(obj) end

---@return number
function ShaderProgramLuma.GetHashCode() end


