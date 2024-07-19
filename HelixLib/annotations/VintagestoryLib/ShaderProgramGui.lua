---@meta

---@class ShaderProgramGui: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field NoTexture number
---@field AlphaTest number
---@field DarkEdges number
---@field TempGlowMode number
---@field TransparentCenter number
---@field Tex2d2D number
---@field NormalShaded number
---@field SepiaLevel number
---@field DamageEffect number
---@field Tex2dOverlay2D number
---@field OverlayOpacity number
---@field OverlayTextureSize Vec2f
---@field BaseTextureSize Vec2f
---@field BaseUvOrigin Vec2f
---@field LightPosition Vec3f
---@field RgbaIn Vec4f
---@field RgbaGlowIn Vec4f
---@field ExtraGlow number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ModelMatrix number
---@field ApplyModelMat number
---@field ApplyColor number
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
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
ShaderProgramGui = {}

---@return ShaderProgramGui
function ShaderProgramGui.ctor() end

---@param value number
function ShaderProgramGui.set_NoTexture(value) end

---@param value number
function ShaderProgramGui.set_AlphaTest(value) end

---@param value number
function ShaderProgramGui.set_DarkEdges(value) end

---@param value number
function ShaderProgramGui.set_TempGlowMode(value) end

---@param value number
function ShaderProgramGui.set_TransparentCenter(value) end

---@param value number
function ShaderProgramGui.set_Tex2d2D(value) end

---@param value number
function ShaderProgramGui.set_NormalShaded(value) end

---@param value number
function ShaderProgramGui.set_SepiaLevel(value) end

---@param value number
function ShaderProgramGui.set_DamageEffect(value) end

---@param value number
function ShaderProgramGui.set_Tex2dOverlay2D(value) end

---@param value number
function ShaderProgramGui.set_OverlayOpacity(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.set_OverlayTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.set_BaseTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.set_BaseUvOrigin(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.set_LightPosition(value) end

---@param value Vec4f
function ShaderProgramGui.set_RgbaIn(value) end

---@param value Vec4f
function ShaderProgramGui.set_RgbaGlowIn(value) end

---@param value number
function ShaderProgramGui.set_ExtraGlow(value) end

---@param value number
function ShaderProgramGui.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramGui.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramGui.set_ModelMatrix(value) end

---@param value number
function ShaderProgramGui.set_ApplyModelMat(value) end

---@param value number
function ShaderProgramGui.set_ApplyColor(value) end

---@param value number
function ShaderProgramGui.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramGui.set_FlatFogStart(value) end

---@param value number
function ShaderProgramGui.set_ViewDistance(value) end

---@param value number
function ShaderProgramGui.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramGui.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramGui.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramGui.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramGui.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramGui.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramGui.Compile() end

---@return boolean
function ShaderProgramGui.get_Disposed() end

---@return boolean
function ShaderProgramGui.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramGui.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramGui.get_LoadError() end

---@param value boolean
function ShaderProgramGui.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramGui.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGui.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGui.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramGui.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramGui.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramGui.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramGui.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramGui.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGui.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramGui.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramGui.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGui.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramGui.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramGui.Use() end

function ShaderProgramGui.Stop() end

function ShaderProgramGui.Dispose() end

---@return userdata
function ShaderProgramGui.GetType() end

---@return string
function ShaderProgramGui.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramGui.Equals(obj) end

---@return number
function ShaderProgramGui.GetHashCode() end


