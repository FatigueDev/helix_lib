---@meta

---@class ShaderProgramColorgrade: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field PrimaryScene2D number
---@field GammaLevel number
---@field BrightnessLevel number
---@field SepiaLevel number
---@field DamageVignetting number
---@field Minlight number
---@field Maxlight number
---@field Minsat number
---@field Maxsat number
---@field InvFrameSizeIn Vec2f
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
ShaderProgramColorgrade = {}

---@return ShaderProgramColorgrade
function ShaderProgramColorgrade.ctor() end

---@param value number
function ShaderProgramColorgrade.set_PrimaryScene2D(value) end

---@param value number
function ShaderProgramColorgrade.set_GammaLevel(value) end

---@param value number
function ShaderProgramColorgrade.set_BrightnessLevel(value) end

---@param value number
function ShaderProgramColorgrade.set_SepiaLevel(value) end

---@param value number
function ShaderProgramColorgrade.set_DamageVignetting(value) end

---@param value number
function ShaderProgramColorgrade.set_Minlight(value) end

---@param value number
function ShaderProgramColorgrade.set_Maxlight(value) end

---@param value number
function ShaderProgramColorgrade.set_Minsat(value) end

---@param value number
function ShaderProgramColorgrade.set_Maxsat(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramColorgrade.set_InvFrameSizeIn(value) end

---@return boolean
function ShaderProgramColorgrade.Compile() end

---@return boolean
function ShaderProgramColorgrade.get_Disposed() end

---@return boolean
function ShaderProgramColorgrade.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramColorgrade.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramColorgrade.get_LoadError() end

---@param value boolean
function ShaderProgramColorgrade.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramColorgrade.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramColorgrade.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramColorgrade.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramColorgrade.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramColorgrade.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramColorgrade.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramColorgrade.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramColorgrade.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramColorgrade.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramColorgrade.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramColorgrade.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramColorgrade.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramColorgrade.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramColorgrade.Use() end

function ShaderProgramColorgrade.Stop() end

function ShaderProgramColorgrade.Dispose() end

---@return userdata
function ShaderProgramColorgrade.GetType() end

---@return string
function ShaderProgramColorgrade.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramColorgrade.Equals(obj) end

---@return number
function ShaderProgramColorgrade.GetHashCode() end


