---@meta

---@class ShaderProgramTexture2texture: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Tex2d2D number
---@field Texu number
---@field Texv number
---@field Texw number
---@field Texh number
---@field AlphaTest number
---@field Xs number
---@field Ys number
---@field Width number
---@field Height number
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
ShaderProgramTexture2texture = {}

---@return ShaderProgramTexture2texture
function ShaderProgramTexture2texture.ctor() end

---@param value number
function ShaderProgramTexture2texture.set_Tex2d2D(value) end

---@param value number
function ShaderProgramTexture2texture.set_Texu(value) end

---@param value number
function ShaderProgramTexture2texture.set_Texv(value) end

---@param value number
function ShaderProgramTexture2texture.set_Texw(value) end

---@param value number
function ShaderProgramTexture2texture.set_Texh(value) end

---@param value number
function ShaderProgramTexture2texture.set_AlphaTest(value) end

---@param value number
function ShaderProgramTexture2texture.set_Xs(value) end

---@param value number
function ShaderProgramTexture2texture.set_Ys(value) end

---@param value number
function ShaderProgramTexture2texture.set_Width(value) end

---@param value number
function ShaderProgramTexture2texture.set_Height(value) end

---@return boolean
function ShaderProgramTexture2texture.Compile() end

---@return boolean
function ShaderProgramTexture2texture.get_Disposed() end

---@return boolean
function ShaderProgramTexture2texture.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramTexture2texture.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramTexture2texture.get_LoadError() end

---@param value boolean
function ShaderProgramTexture2texture.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramTexture2texture.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTexture2texture.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTexture2texture.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramTexture2texture.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramTexture2texture.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramTexture2texture.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramTexture2texture.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramTexture2texture.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramTexture2texture.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramTexture2texture.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramTexture2texture.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramTexture2texture.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramTexture2texture.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramTexture2texture.Use() end

function ShaderProgramTexture2texture.Stop() end

function ShaderProgramTexture2texture.Dispose() end

---@return userdata
function ShaderProgramTexture2texture.GetType() end

---@return string
function ShaderProgramTexture2texture.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramTexture2texture.Equals(obj) end

---@return number
function ShaderProgramTexture2texture.GetHashCode() end


