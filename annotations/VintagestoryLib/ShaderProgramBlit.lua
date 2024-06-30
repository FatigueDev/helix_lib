---@meta

---@class ShaderProgramBlit: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
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
ShaderProgramBlit = {}

---@return ShaderProgramBlit
function ShaderProgramBlit.ctor() end

---@param value number
function ShaderProgramBlit.set_Scene2D(value) end

---@return boolean
function ShaderProgramBlit.Compile() end

---@return boolean
function ShaderProgramBlit.get_Disposed() end

---@return boolean
function ShaderProgramBlit.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramBlit.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramBlit.get_LoadError() end

---@param value boolean
function ShaderProgramBlit.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramBlit.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlit.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlit.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramBlit.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlit.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramBlit.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramBlit.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramBlit.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlit.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramBlit.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlit.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlit.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlit.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramBlit.Use() end

function ShaderProgramBlit.Stop() end

function ShaderProgramBlit.Dispose() end

---@return userdata
function ShaderProgramBlit.GetType() end

---@return string
function ShaderProgramBlit.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramBlit.Equals(obj) end

---@return number
function ShaderProgramBlit.GetHashCode() end


