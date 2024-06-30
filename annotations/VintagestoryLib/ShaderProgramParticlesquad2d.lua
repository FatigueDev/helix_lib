---@meta

---@class ShaderProgramParticlesquad2d: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field ParticleTex2D number
---@field OitPass number
---@field WithTexture number
---@field HeldItemMode number
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
ShaderProgramParticlesquad2d = {}

---@return ShaderProgramParticlesquad2d
function ShaderProgramParticlesquad2d.ctor() end

---@param value number
function ShaderProgramParticlesquad2d.set_ParticleTex2D(value) end

---@param value number
function ShaderProgramParticlesquad2d.set_OitPass(value) end

---@param value number
function ShaderProgramParticlesquad2d.set_WithTexture(value) end

---@param value number
function ShaderProgramParticlesquad2d.set_HeldItemMode(value) end

---@param value number
function ShaderProgramParticlesquad2d.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramParticlesquad2d.set_ModelViewMatrix(value) end

---@return boolean
function ShaderProgramParticlesquad2d.Compile() end

---@return boolean
function ShaderProgramParticlesquad2d.get_Disposed() end

---@return boolean
function ShaderProgramParticlesquad2d.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramParticlesquad2d.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramParticlesquad2d.get_LoadError() end

---@param value boolean
function ShaderProgramParticlesquad2d.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramParticlesquad2d.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad2d.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad2d.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramParticlesquad2d.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramParticlesquad2d.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramParticlesquad2d.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramParticlesquad2d.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramParticlesquad2d.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlesquad2d.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramParticlesquad2d.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramParticlesquad2d.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlesquad2d.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramParticlesquad2d.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramParticlesquad2d.Use() end

function ShaderProgramParticlesquad2d.Stop() end

function ShaderProgramParticlesquad2d.Dispose() end

---@return userdata
function ShaderProgramParticlesquad2d.GetType() end

---@return string
function ShaderProgramParticlesquad2d.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramParticlesquad2d.Equals(obj) end

---@return number
function ShaderProgramParticlesquad2d.GetHashCode() end


