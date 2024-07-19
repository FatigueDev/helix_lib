---@meta

---@class ShaderProgramBlur: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field InputTexture2D number
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
ShaderProgramBlur = {}

---@return ShaderProgramBlur
function ShaderProgramBlur.ctor() end

---@param value number
function ShaderProgramBlur.set_InputTexture2D(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlur.set_FrameSize(value) end

---@param value number
function ShaderProgramBlur.set_IsVertical(value) end

---@return boolean
function ShaderProgramBlur.Compile() end

---@return boolean
function ShaderProgramBlur.get_Disposed() end

---@return boolean
function ShaderProgramBlur.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramBlur.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramBlur.get_LoadError() end

---@param value boolean
function ShaderProgramBlur.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramBlur.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlur.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlur.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramBlur.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramBlur.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramBlur.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramBlur.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramBlur.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlur.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramBlur.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramBlur.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlur.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramBlur.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramBlur.Use() end

function ShaderProgramBlur.Stop() end

function ShaderProgramBlur.Dispose() end

---@return userdata
function ShaderProgramBlur.GetType() end

---@return string
function ShaderProgramBlur.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramBlur.Equals(obj) end

---@return number
function ShaderProgramBlur.GetHashCode() end


