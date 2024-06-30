---@meta

---@class ShaderProgramDebugdepthbuffer: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field DepthSampler2D number
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
ShaderProgramDebugdepthbuffer = {}

---@return ShaderProgramDebugdepthbuffer
function ShaderProgramDebugdepthbuffer.ctor() end

---@param value number
function ShaderProgramDebugdepthbuffer.set_DepthSampler2D(value) end

---@param value number
function ShaderProgramDebugdepthbuffer.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramDebugdepthbuffer.set_ModelViewMatrix(value) end

---@return boolean
function ShaderProgramDebugdepthbuffer.Compile() end

---@return boolean
function ShaderProgramDebugdepthbuffer.get_Disposed() end

---@return boolean
function ShaderProgramDebugdepthbuffer.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramDebugdepthbuffer.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramDebugdepthbuffer.get_LoadError() end

---@param value boolean
function ShaderProgramDebugdepthbuffer.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramDebugdepthbuffer.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDebugdepthbuffer.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDebugdepthbuffer.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramDebugdepthbuffer.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramDebugdepthbuffer.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramDebugdepthbuffer.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramDebugdepthbuffer.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramDebugdepthbuffer.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramDebugdepthbuffer.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramDebugdepthbuffer.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramDebugdepthbuffer.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramDebugdepthbuffer.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramDebugdepthbuffer.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramDebugdepthbuffer.Use() end

function ShaderProgramDebugdepthbuffer.Stop() end

function ShaderProgramDebugdepthbuffer.Dispose() end

---@return userdata
function ShaderProgramDebugdepthbuffer.GetType() end

---@return string
function ShaderProgramDebugdepthbuffer.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramDebugdepthbuffer.Equals(obj) end

---@return number
function ShaderProgramDebugdepthbuffer.GetHashCode() end


