---@meta

---@class ShaderProgramShadowmapentityanimated: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field EntityTex2D number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ElementTransforms number
---@field AddRenderFlags number
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
ShaderProgramShadowmapentityanimated = {}

---@return ShaderProgramShadowmapentityanimated
function ShaderProgramShadowmapentityanimated.ctor() end

---@param value number
function ShaderProgramShadowmapentityanimated.set_EntityTex2D(value) end

---@param value number
function ShaderProgramShadowmapentityanimated.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramShadowmapentityanimated.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramShadowmapentityanimated.set_ElementTransforms(value) end

---@param value number
function ShaderProgramShadowmapentityanimated.set_AddRenderFlags(value) end

---@return boolean
function ShaderProgramShadowmapentityanimated.Compile() end

---@return boolean
function ShaderProgramShadowmapentityanimated.get_Disposed() end

---@return boolean
function ShaderProgramShadowmapentityanimated.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramShadowmapentityanimated.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramShadowmapentityanimated.get_LoadError() end

---@param value boolean
function ShaderProgramShadowmapentityanimated.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramShadowmapentityanimated.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapentityanimated.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapentityanimated.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramShadowmapentityanimated.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramShadowmapentityanimated.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramShadowmapentityanimated.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramShadowmapentityanimated.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramShadowmapentityanimated.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramShadowmapentityanimated.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramShadowmapentityanimated.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramShadowmapentityanimated.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramShadowmapentityanimated.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramShadowmapentityanimated.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramShadowmapentityanimated.Use() end

function ShaderProgramShadowmapentityanimated.Stop() end

function ShaderProgramShadowmapentityanimated.Dispose() end

---@return userdata
function ShaderProgramShadowmapentityanimated.GetType() end

---@return string
function ShaderProgramShadowmapentityanimated.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramShadowmapentityanimated.Equals(obj) end

---@return number
function ShaderProgramShadowmapentityanimated.GetHashCode() end


