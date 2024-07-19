---@meta

---@class ShaderProgramBilateralblur: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field InputTexture2D number
---@field DepthTexture2D number
---@field FrameSize Vec2f
---@field IsVertical number
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
ShaderProgramBilateralblur = {}

---@return ShaderProgramBilateralblur
function ShaderProgramBilateralblur.ctor() end

---@param value number
function ShaderProgramBilateralblur.set_InputTexture2D(value) end

---@param value number
function ShaderProgramBilateralblur.set_DepthTexture2D(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBilateralblur.set_FrameSize(value) end

---@param value number
function ShaderProgramBilateralblur.set_IsVertical(value) end

---@return boolean
function ShaderProgramBilateralblur.Compile() end

---@return boolean
function ShaderProgramBilateralblur.get_Disposed() end

---@return boolean
function ShaderProgramBilateralblur.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramBilateralblur.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramBilateralblur.get_LoadError() end

---@param value boolean
function ShaderProgramBilateralblur.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramBilateralblur.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBilateralblur.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBilateralblur.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramBilateralblur.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBilateralblur.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramBilateralblur.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramBilateralblur.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramBilateralblur.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBilateralblur.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramBilateralblur.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBilateralblur.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBilateralblur.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBilateralblur.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramBilateralblur.Use() end

function ShaderProgramBilateralblur.Stop() end

function ShaderProgramBilateralblur.Dispose() end

---@return userdata
function ShaderProgramBilateralblur.GetType() end

---@return string
function ShaderProgramBilateralblur.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramBilateralblur.Equals(obj) end

---@return number
function ShaderProgramBilateralblur.GetHashCode() end


