---@meta

---@class ShaderProgramCelestialobject: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field Tex2D number
---@field ExtraGodray number
---@field AlphaTest number
---@field FogDensityIn number
---@field FogMinIn number
---@field HorizonFog number
---@field SunPosition Vec3f
---@field WeirdMathToMakeMoonLookNicer number
---@field DayLight number
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
---@field ModelMatrix number
---@field ViewMatrix number
---@field ExtraGlow number
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
ShaderProgramCelestialobject = {}

---@return ShaderProgramCelestialobject
function ShaderProgramCelestialobject.ctor() end

---@param value number
function ShaderProgramCelestialobject.set_Tex2D(value) end

---@param value number
function ShaderProgramCelestialobject.set_ExtraGodray(value) end

---@param value number
function ShaderProgramCelestialobject.set_AlphaTest(value) end

---@param value number
function ShaderProgramCelestialobject.set_FogDensityIn(value) end

---@param value number
function ShaderProgramCelestialobject.set_FogMinIn(value) end

---@param value number
function ShaderProgramCelestialobject.set_HorizonFog(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramCelestialobject.set_SunPosition(value) end

---@param value number
function ShaderProgramCelestialobject.set_WeirdMathToMakeMoonLookNicer(value) end

---@param value number
function ShaderProgramCelestialobject.set_DayLight(value) end

---@param value number
function ShaderProgramCelestialobject.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramCelestialobject.set_FlatFogStart(value) end

---@param value number
function ShaderProgramCelestialobject.set_ViewDistance(value) end

---@param value number
function ShaderProgramCelestialobject.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramCelestialobject.set_ZNear(value) end

---@param value number
function ShaderProgramCelestialobject.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramCelestialobject.set_LightPosition(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramCelestialobject.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramCelestialobject.set_GlitchStrength(value) end

---@param value number
function ShaderProgramCelestialobject.set_PlayerToSealevelOffset(value) end

---@param value number
function ShaderProgramCelestialobject.set_DitherSeed(value) end

---@param value number
function ShaderProgramCelestialobject.set_HorizontalResolution(value) end

---@param value number
function ShaderProgramCelestialobject.set_FogWaveCounter(value) end

---@param value number
function ShaderProgramCelestialobject.set_Glow2D(value) end

---@param value number
function ShaderProgramCelestialobject.set_Sky2D(value) end

---@param value number
function ShaderProgramCelestialobject.set_SunsetMod(value) end

---@param value Vec4f
function ShaderProgramCelestialobject.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramCelestialobject.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramCelestialobject.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramCelestialobject.set_ModelMatrix(value) end

---@param value number
function ShaderProgramCelestialobject.set_ViewMatrix(value) end

---@param value number
function ShaderProgramCelestialobject.set_ExtraGlow(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramCelestialobject.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramCelestialobject.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramCelestialobject.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramCelestialobject.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramCelestialobject.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramCelestialobject.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramCelestialobject.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramCelestialobject.set_PointLightQuantity(value) end

---@return boolean
function ShaderProgramCelestialobject.Compile() end

---@return boolean
function ShaderProgramCelestialobject.get_Disposed() end

---@return boolean
function ShaderProgramCelestialobject.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramCelestialobject.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramCelestialobject.get_LoadError() end

---@param value boolean
function ShaderProgramCelestialobject.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramCelestialobject.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramCelestialobject.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramCelestialobject.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramCelestialobject.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramCelestialobject.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramCelestialobject.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramCelestialobject.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramCelestialobject.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramCelestialobject.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramCelestialobject.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramCelestialobject.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramCelestialobject.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramCelestialobject.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramCelestialobject.Use() end

function ShaderProgramCelestialobject.Stop() end

function ShaderProgramCelestialobject.Dispose() end

---@return userdata
function ShaderProgramCelestialobject.GetType() end

---@return string
function ShaderProgramCelestialobject.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramCelestialobject.Equals(obj) end

---@return number
function ShaderProgramCelestialobject.GetHashCode() end


