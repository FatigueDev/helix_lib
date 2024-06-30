---@meta

---@class ShaderProgramGuitopsoil: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field TerrainTex2D number
---@field BlockTextureSize number
---@field NoTexture number
---@field AlphaTest number
---@field RgbaIn Vec4f
---@field ExtraGlow number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ApplyColor number
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
ShaderProgramGuitopsoil = {}

---@return ShaderProgramGuitopsoil
function ShaderProgramGuitopsoil.ctor() end

---@param value number
function ShaderProgramGuitopsoil.set_TerrainTex2D(value) end

---@param value number
function ShaderProgramGuitopsoil.set_BlockTextureSize(value) end

---@param value number
function ShaderProgramGuitopsoil.set_NoTexture(value) end

---@param value number
function ShaderProgramGuitopsoil.set_AlphaTest(value) end

---@param value Vec4f
function ShaderProgramGuitopsoil.set_RgbaIn(value) end

---@param value number
function ShaderProgramGuitopsoil.set_ExtraGlow(value) end

---@param value number
function ShaderProgramGuitopsoil.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramGuitopsoil.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramGuitopsoil.set_ApplyColor(value) end

---@return boolean
function ShaderProgramGuitopsoil.Compile() end

---@return boolean
function ShaderProgramGuitopsoil.get_Disposed() end

---@return boolean
function ShaderProgramGuitopsoil.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramGuitopsoil.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramGuitopsoil.get_LoadError() end

---@param value boolean
function ShaderProgramGuitopsoil.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramGuitopsoil.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuitopsoil.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuitopsoil.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramGuitopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuitopsoil.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramGuitopsoil.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramGuitopsoil.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramGuitopsoil.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGuitopsoil.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramGuitopsoil.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGuitopsoil.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGuitopsoil.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGuitopsoil.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramGuitopsoil.Use() end

function ShaderProgramGuitopsoil.Stop() end

function ShaderProgramGuitopsoil.Dispose() end

---@return userdata
function ShaderProgramGuitopsoil.GetType() end

---@return string
function ShaderProgramGuitopsoil.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramGuitopsoil.Equals(obj) end

---@return number
function ShaderProgramGuitopsoil.GetHashCode() end


