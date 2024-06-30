---@meta

---@class ShaderProgramGodrays: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field InputTexture2D number
---@field GlowParts2D number
---@field InvFrameSizeIn Vec2f
---@field SunPosScreenIn Vec3f
---@field SunPos3dIn Vec3f
---@field PlayerViewVector Vec3f
---@field IGlobalTimeIn number
---@field DirectionIn number
---@field Dusk number
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
ShaderProgramGodrays = {}

---@return ShaderProgramGodrays
function ShaderProgramGodrays.ctor() end

---@param value number
function ShaderProgramGodrays.set_InputTexture2D(value) end

---@param value number
function ShaderProgramGodrays.set_GlowParts2D(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.set_InvFrameSizeIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.set_SunPosScreenIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.set_SunPos3dIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.set_PlayerViewVector(value) end

---@param value number
function ShaderProgramGodrays.set_IGlobalTimeIn(value) end

---@param value number
function ShaderProgramGodrays.set_DirectionIn(value) end

---@param value number
function ShaderProgramGodrays.set_Dusk(value) end

---@return boolean
function ShaderProgramGodrays.Compile() end

---@return boolean
function ShaderProgramGodrays.get_Disposed() end

---@return boolean
function ShaderProgramGodrays.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramGodrays.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramGodrays.get_LoadError() end

---@param value boolean
function ShaderProgramGodrays.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramGodrays.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGodrays.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGodrays.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramGodrays.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGodrays.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramGodrays.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramGodrays.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramGodrays.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGodrays.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramGodrays.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGodrays.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGodrays.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGodrays.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramGodrays.Use() end

function ShaderProgramGodrays.Stop() end

function ShaderProgramGodrays.Dispose() end

---@return userdata
function ShaderProgramGodrays.GetType() end

---@return string
function ShaderProgramGodrays.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramGodrays.Equals(obj) end

---@return number
function ShaderProgramGodrays.GetHashCode() end


