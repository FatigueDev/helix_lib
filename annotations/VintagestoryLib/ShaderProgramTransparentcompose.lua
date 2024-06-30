---@meta

---@class ShaderProgramTransparentcompose: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Accumulation2D number
---@field Revealage2D number
---@field InGlow2D number
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
ShaderProgramTransparentcompose = {}

---@return ShaderProgramTransparentcompose
function ShaderProgramTransparentcompose.ctor() end

---@param value number
function ShaderProgramTransparentcompose.set_Accumulation2D(value) end

---@param value number
function ShaderProgramTransparentcompose.set_Revealage2D(value) end

---@param value number
function ShaderProgramTransparentcompose.set_InGlow2D(value) end

---@return boolean
function ShaderProgramTransparentcompose.Compile() end

---@return boolean
function ShaderProgramTransparentcompose.get_Disposed() end

---@return boolean
function ShaderProgramTransparentcompose.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramTransparentcompose.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramTransparentcompose.get_LoadError() end

---@param value boolean
function ShaderProgramTransparentcompose.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramTransparentcompose.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTransparentcompose.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTransparentcompose.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramTransparentcompose.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTransparentcompose.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramTransparentcompose.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramTransparentcompose.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramTransparentcompose.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramTransparentcompose.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramTransparentcompose.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramTransparentcompose.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramTransparentcompose.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramTransparentcompose.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramTransparentcompose.Use() end

function ShaderProgramTransparentcompose.Stop() end

function ShaderProgramTransparentcompose.Dispose() end

---@return userdata
function ShaderProgramTransparentcompose.GetType() end

---@return string
function ShaderProgramTransparentcompose.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramTransparentcompose.Equals(obj) end

---@return number
function ShaderProgramTransparentcompose.GetHashCode() end


