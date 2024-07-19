---@meta

---@class ShaderProgramSky: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field FogDensityIn number
---@field FogMinIn number
---@field DayLight number
---@field HorizonFog number
---@field PlayerPos Vec3f
---@field SunPosition Vec3f
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
---@field PlayerToSealevelOffset number
---@field DitherSeed number
---@field HorizontalResolution number
---@field FogWaveCounter number
---@field Glow2D number
---@field Sky2D number
---@field SunsetMod number
---@field RgbaFogIn Vec4f
---@field RgbaAmbientIn Vec3f
---@field ProjectionMatrix number
---@field ModelViewMatrix number
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
ShaderProgramSky = {}

---@return ShaderProgramSky
function ShaderProgramSky.ctor() end

---@param value number
function ShaderProgramSky.set_FogDensityIn(value) end

---@param value number
function ShaderProgramSky.set_FogMinIn(value) end

---@param value number
function ShaderProgramSky.set_DayLight(value) end

---@param value number
function ShaderProgramSky.set_HorizonFog(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.set_PlayerPos(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.set_SunPosition(value) end

---@param value number
function ShaderProgramSky.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramSky.set_FlatFogStart(value) end

---@param value number
function ShaderProgramSky.set_ViewDistance(value) end

---@param value number
function ShaderProgramSky.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramSky.set_ZNear(value) end

---@param value number
function ShaderProgramSky.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.set_LightPosition(value) end

---@param value number
function ShaderProgramSky.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramSky.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramSky.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramSky.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramSky.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramSky.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramSky.set_GlitchStrength(value) end

---@param value number
function ShaderProgramSky.set_PlayerToSealevelOffset(value) end

---@param value number
function ShaderProgramSky.set_DitherSeed(value) end

---@param value number
function ShaderProgramSky.set_HorizontalResolution(value) end

---@param value number
function ShaderProgramSky.set_FogWaveCounter(value) end

---@param value number
function ShaderProgramSky.set_Glow2D(value) end

---@param value number
function ShaderProgramSky.set_Sky2D(value) end

---@param value number
function ShaderProgramSky.set_SunsetMod(value) end

---@param value Vec4f
function ShaderProgramSky.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramSky.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramSky.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramSky.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramSky.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramSky.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramSky.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramSky.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramSky.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramSky.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramSky.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramSky.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramSky.Compile() end

---@return boolean
function ShaderProgramSky.get_Disposed() end

---@return boolean
function ShaderProgramSky.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramSky.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramSky.get_LoadError() end

---@param value boolean
function ShaderProgramSky.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramSky.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSky.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSky.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramSky.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramSky.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramSky.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramSky.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramSky.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramSky.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramSky.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramSky.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramSky.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramSky.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramSky.Use() end

function ShaderProgramSky.Stop() end

function ShaderProgramSky.Dispose() end

---@return userdata
function ShaderProgramSky.GetType() end

---@return string
function ShaderProgramSky.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramSky.Equals(obj) end

---@return number
function ShaderProgramSky.GetHashCode() end


