---@meta

---@class ShaderProgramWoittest: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ProjectionMatrix number
---@field ModelViewMatrix number
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
ShaderProgramWoittest = {}

---@return ShaderProgramWoittest
function ShaderProgramWoittest.ctor() end

---@param value number
function ShaderProgramWoittest.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramWoittest.set_ModelViewMatrix(value) end

---@return boolean
function ShaderProgramWoittest.Compile() end

---@return boolean
function ShaderProgramWoittest.get_Disposed() end

---@return boolean
function ShaderProgramWoittest.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramWoittest.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramWoittest.get_LoadError() end

---@param value boolean
function ShaderProgramWoittest.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramWoittest.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWoittest.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWoittest.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramWoittest.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramWoittest.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramWoittest.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramWoittest.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramWoittest.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramWoittest.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramWoittest.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramWoittest.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramWoittest.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramWoittest.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramWoittest.Use() end

function ShaderProgramWoittest.Stop() end

function ShaderProgramWoittest.Dispose() end

---@return userdata
function ShaderProgramWoittest.GetType() end

---@return string
function ShaderProgramWoittest.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramWoittest.Equals(obj) end

---@return number
function ShaderProgramWoittest.GetHashCode() end


