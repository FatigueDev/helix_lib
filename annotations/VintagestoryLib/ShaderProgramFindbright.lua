---@meta

---@class ShaderProgramFindbright: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ColorTex2D number
---@field GlowTex2D number
---@field ExtraBloom number
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
ShaderProgramFindbright = {}

---@return ShaderProgramFindbright
function ShaderProgramFindbright.ctor() end

---@param value number
function ShaderProgramFindbright.set_ColorTex2D(value) end

---@param value number
function ShaderProgramFindbright.set_GlowTex2D(value) end

---@param value number
function ShaderProgramFindbright.set_ExtraBloom(value) end

---@return boolean
function ShaderProgramFindbright.Compile() end

---@return boolean
function ShaderProgramFindbright.get_Disposed() end

---@return boolean
function ShaderProgramFindbright.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramFindbright.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramFindbright.get_LoadError() end

---@param value boolean
function ShaderProgramFindbright.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramFindbright.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFindbright.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFindbright.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramFindbright.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFindbright.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramFindbright.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramFindbright.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramFindbright.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramFindbright.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramFindbright.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramFindbright.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramFindbright.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramFindbright.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramFindbright.Use() end

function ShaderProgramFindbright.Stop() end

function ShaderProgramFindbright.Dispose() end

---@return userdata
function ShaderProgramFindbright.GetType() end

---@return string
function ShaderProgramFindbright.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramFindbright.Equals(obj) end

---@return number
function ShaderProgramFindbright.GetHashCode() end


