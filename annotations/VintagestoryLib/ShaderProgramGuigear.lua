---@meta

---@class ShaderProgramGuigear: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Tex2d2D number
---@field GearCounter number
---@field StabilityLevel number
---@field ShadeYPos number
---@field HotbarYPos number
---@field GearHeight number
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
ShaderProgramGuigear = {}

---@return ShaderProgramGuigear
function ShaderProgramGuigear.ctor() end

---@param value number
function ShaderProgramGuigear.set_Tex2d2D(value) end

---@param value number
function ShaderProgramGuigear.set_GearCounter(value) end

---@param value number
function ShaderProgramGuigear.set_StabilityLevel(value) end

---@param value number
function ShaderProgramGuigear.set_ShadeYPos(value) end

---@param value number
function ShaderProgramGuigear.set_HotbarYPos(value) end

---@param value number
function ShaderProgramGuigear.set_GearHeight(value) end

---@param value number
function ShaderProgramGuigear.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramGuigear.set_ModelViewMatrix(value) end

---@return boolean
function ShaderProgramGuigear.Compile() end

---@return boolean
function ShaderProgramGuigear.get_Disposed() end

---@return boolean
function ShaderProgramGuigear.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramGuigear.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramGuigear.get_LoadError() end

---@param value boolean
function ShaderProgramGuigear.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramGuigear.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuigear.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuigear.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramGuigear.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGuigear.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramGuigear.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramGuigear.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramGuigear.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGuigear.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramGuigear.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGuigear.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGuigear.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGuigear.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramGuigear.Use() end

function ShaderProgramGuigear.Stop() end

function ShaderProgramGuigear.Dispose() end

---@return userdata
function ShaderProgramGuigear.GetType() end

---@return string
function ShaderProgramGuigear.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramGuigear.Equals(obj) end

---@return number
function ShaderProgramGuigear.GetHashCode() end


