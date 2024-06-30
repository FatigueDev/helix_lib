---@meta

---@class ShaderProgramFinal: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field PrimaryScene2D number
---@field GlowParts2D number
---@field BloomParts2D number
---@field GodrayParts2D number
---@field SsaoScene2D number
---@field GammaLevel number
---@field BrightnessLevel number
---@field SepiaLevel number
---@field DamageVignetting number
---@field DamageVignettingSide number
---@field FrostVignetting number
---@field ExtraGamma number
---@field WindWaveCounter number
---@field GlitchEffectStrength number
---@field Minlight number
---@field Maxlight number
---@field Minsat number
---@field Maxsat number
---@field InvFrameSizeIn Vec2f
---@field SunPosScreenIn Vec3f
---@field SunPos3dIn Vec3f
---@field PlayerViewVector Vec3f
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
ShaderProgramFinal = {}

---@return ShaderProgramFinal
function ShaderProgramFinal.ctor() end

---@param value number
function ShaderProgramFinal.set_PrimaryScene2D(value) end

---@param value number
function ShaderProgramFinal.set_GlowParts2D(value) end

---@param value number
function ShaderProgramFinal.set_BloomParts2D(value) end

---@param value number
function ShaderProgramFinal.set_GodrayParts2D(value) end

---@param value number
function ShaderProgramFinal.set_SsaoScene2D(value) end

---@param value number
function ShaderProgramFinal.set_GammaLevel(value) end

---@param value number
function ShaderProgramFinal.set_BrightnessLevel(value) end

---@param value number
function ShaderProgramFinal.set_SepiaLevel(value) end

---@param value number
function ShaderProgramFinal.set_DamageVignetting(value) end

---@param value number
function ShaderProgramFinal.set_DamageVignettingSide(value) end

---@param value number
function ShaderProgramFinal.set_FrostVignetting(value) end

---@param value number
function ShaderProgramFinal.set_ExtraGamma(value) end

---@param value number
function ShaderProgramFinal.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramFinal.set_GlitchEffectStrength(value) end

---@param value number
function ShaderProgramFinal.set_Minlight(value) end

---@param value number
function ShaderProgramFinal.set_Maxlight(value) end

---@param value number
function ShaderProgramFinal.set_Minsat(value) end

---@param value number
function ShaderProgramFinal.set_Maxsat(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.set_InvFrameSizeIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.set_SunPosScreenIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.set_SunPos3dIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.set_PlayerViewVector(value) end

---@return boolean
function ShaderProgramFinal.Compile() end

---@return boolean
function ShaderProgramFinal.get_Disposed() end

---@return boolean
function ShaderProgramFinal.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramFinal.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramFinal.get_LoadError() end

---@param value boolean
function ShaderProgramFinal.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramFinal.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFinal.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFinal.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramFinal.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramFinal.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramFinal.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramFinal.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramFinal.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramFinal.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramFinal.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramFinal.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramFinal.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramFinal.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramFinal.Use() end

function ShaderProgramFinal.Stop() end

function ShaderProgramFinal.Dispose() end

---@return userdata
function ShaderProgramFinal.GetType() end

---@return string
function ShaderProgramFinal.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramFinal.Equals(obj) end

---@return number
function ShaderProgramFinal.GetHashCode() end


