---@meta

---@class ShaderProgramNightsky: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field RgbaFog Vec4f
---@field CtexCube number
---@field DitherSeed number
---@field HorizontalResolution number
---@field DayLight number
---@field HorizonFog number
---@field PlayerToSealevelOffset number
---@field FogDensityIn number
---@field FogMinIn number
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field ZNear number
---@field ZFar number
---@field LightPosition Vec3f
---@field ShadowIntensity number
---@field ShadowMapFar2D number
---@field ShadowMapWidthInv number
---@field ShadowMapHeightInv number
---@field ShadowMapNear2D number
---@field WindWaveCounter number
---@field GlitchStrength number
---@field ProjectionMatrix number
---@field ModelMatrix number
---@field ViewMatrix number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
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
ShaderProgramNightsky = {}

---@return ShaderProgramNightsky
function ShaderProgramNightsky.ctor() end

---@param value Vec4f
function ShaderProgramNightsky.set_RgbaFog(value) end

---@param value number
function ShaderProgramNightsky.set_CtexCube(value) end

---@param value number
function ShaderProgramNightsky.set_DitherSeed(value) end

---@param value number
function ShaderProgramNightsky.set_HorizontalResolution(value) end

---@param value number
function ShaderProgramNightsky.set_DayLight(value) end

---@param value number
function ShaderProgramNightsky.set_HorizonFog(value) end

---@param value number
function ShaderProgramNightsky.set_PlayerToSealevelOffset(value) end

---@param value number
function ShaderProgramNightsky.set_FogDensityIn(value) end

---@param value number
function ShaderProgramNightsky.set_FogMinIn(value) end

---@param value number
function ShaderProgramNightsky.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramNightsky.set_FlatFogStart(value) end

---@param value number
function ShaderProgramNightsky.set_ViewDistance(value) end

---@param value number
function ShaderProgramNightsky.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramNightsky.set_ZNear(value) end

---@param value number
function ShaderProgramNightsky.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramNightsky.set_LightPosition(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramNightsky.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramNightsky.set_GlitchStrength(value) end

---@param value number
function ShaderProgramNightsky.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramNightsky.set_ModelMatrix(value) end

---@param value number
function ShaderProgramNightsky.set_ViewMatrix(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramNightsky.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramNightsky.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramNightsky.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramNightsky.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramNightsky.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramNightsky.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramNightsky.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramNightsky.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramNightsky.Compile() end

---@return boolean
function ShaderProgramNightsky.get_Disposed() end

---@return boolean
function ShaderProgramNightsky.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramNightsky.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramNightsky.get_LoadError() end

---@param value boolean
function ShaderProgramNightsky.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramNightsky.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramNightsky.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramNightsky.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramNightsky.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramNightsky.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramNightsky.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramNightsky.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramNightsky.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramNightsky.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramNightsky.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramNightsky.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramNightsky.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramNightsky.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramNightsky.Use() end

function ShaderProgramNightsky.Stop() end

function ShaderProgramNightsky.Dispose() end

---@return userdata
function ShaderProgramNightsky.GetType() end

---@return string
function ShaderProgramNightsky.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramNightsky.Equals(obj) end

---@return number
function ShaderProgramNightsky.GetHashCode() end


