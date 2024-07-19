---@meta

---@class ShaderProgramMinimalGui: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Tex2d2D number
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
ShaderProgramMinimalGui = {}

---@return ShaderProgramMinimalGui
function ShaderProgramMinimalGui.ctor() end

---@param value number
function ShaderProgramMinimalGui.set_Tex2d2D(value) end

---@param value number
function ShaderProgramMinimalGui.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramMinimalGui.set_ModelViewMatrix(value) end

---@return boolean
function ShaderProgramMinimalGui.Compile() end

---@return boolean
function ShaderProgramMinimalGui.get_Disposed() end

---@return boolean
function ShaderProgramMinimalGui.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramMinimalGui.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramMinimalGui.get_LoadError() end

---@param value boolean
function ShaderProgramMinimalGui.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramMinimalGui.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramMinimalGui.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramMinimalGui.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramMinimalGui.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramMinimalGui.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramMinimalGui.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramMinimalGui.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramMinimalGui.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramMinimalGui.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramMinimalGui.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramMinimalGui.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramMinimalGui.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramMinimalGui.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramMinimalGui.Use() end

function ShaderProgramMinimalGui.Stop() end

function ShaderProgramMinimalGui.Dispose() end

---@return userdata
function ShaderProgramMinimalGui.GetType() end

---@return string
function ShaderProgramMinimalGui.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramMinimalGui.Equals(obj) end

---@return number
function ShaderProgramMinimalGui.GetHashCode() end


