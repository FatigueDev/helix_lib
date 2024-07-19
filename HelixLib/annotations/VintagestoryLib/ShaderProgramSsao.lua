---@meta

---@class ShaderProgramSsao: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field GPosition2D number
---@field GNormal2D number
---@field TexNoise2D number
---@field ScreenSize Vec2f
---@field Revealage2D number
---@field Projection number
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
ShaderProgramSsao = {}

---@return ShaderProgramSsao
function ShaderProgramSsao.ctor() end

---@param value number
function ShaderProgramSsao.set_GPosition2D(value) end

---@param value number
function ShaderProgramSsao.set_GNormal2D(value) end

---@param value number
function ShaderProgramSsao.set_TexNoise2D(value) end

---@param count number
---@param values number
function ShaderProgramSsao.SamplesArray(count, values) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSsao.set_ScreenSize(value) end

---@param value number
function ShaderProgramSsao.set_Revealage2D(value) end

---@param value number
function ShaderProgramSsao.set_Projection(value) end

---@return boolean
function ShaderProgramSsao.Compile() end

---@return boolean
function ShaderProgramSsao.get_Disposed() end

---@return boolean
function ShaderProgramSsao.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramSsao.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramSsao.get_LoadError() end

---@param value boolean
function ShaderProgramSsao.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramSsao.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSsao.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSsao.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramSsao.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSsao.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramSsao.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramSsao.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramSsao.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramSsao.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramSsao.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramSsao.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramSsao.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramSsao.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramSsao.Use() end

function ShaderProgramSsao.Stop() end

function ShaderProgramSsao.Dispose() end

---@return userdata
function ShaderProgramSsao.GetType() end

---@return string
function ShaderProgramSsao.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramSsao.Equals(obj) end

---@return number
function ShaderProgramSsao.GetHashCode() end


