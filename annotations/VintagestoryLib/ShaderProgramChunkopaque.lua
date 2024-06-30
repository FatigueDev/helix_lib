---@meta

---@class ShaderProgramChunkopaque: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field TerrainTex2D number
---@field TerrainTexLinear2D number
---@field AlphaTest number
---@field FogDensityIn number
---@field FogMinIn number
---@field HorizonFog number
---@field SunPosition Vec3f
---@field DayLight number
---@field HaxyFade number
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
---@field Origin Vec3f
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
---@field TimeCounter number
---@field WindWaveCounterHighFreq number
---@field WaterWaveCounter number
---@field WindSpeed number
---@field Playerpos Vec3f
---@field GlobalWarpIntensity number
---@field GlitchWaviness number
---@field WindWaveIntensity number
---@field WaterWaveIntensity number
---@field PerceptionEffectId number
---@field PerceptionEffectIntensity number
---@field SeasonRel number
---@field SeaLevel number
---@field AtlasHeight number
---@field SeasonTemperature number
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
ShaderProgramChunkopaque = {}

---@return ShaderProgramChunkopaque
function ShaderProgramChunkopaque.ctor() end

---@param value number
function ShaderProgramChunkopaque.set_TerrainTex2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_TerrainTexLinear2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_AlphaTest(value) end

---@param value number
function ShaderProgramChunkopaque.set_FogDensityIn(value) end

---@param value number
function ShaderProgramChunkopaque.set_FogMinIn(value) end

---@param value number
function ShaderProgramChunkopaque.set_HorizonFog(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.set_SunPosition(value) end

---@param value number
function ShaderProgramChunkopaque.set_DayLight(value) end

---@param value number
function ShaderProgramChunkopaque.set_HaxyFade(value) end

---@param value number
function ShaderProgramChunkopaque.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramChunkopaque.set_FlatFogStart(value) end

---@param value number
function ShaderProgramChunkopaque.set_ViewDistance(value) end

---@param value number
function ShaderProgramChunkopaque.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramChunkopaque.set_ZNear(value) end

---@param value number
function ShaderProgramChunkopaque.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.set_LightPosition(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramChunkopaque.set_GlitchStrength(value) end

---@param value number
function ShaderProgramChunkopaque.set_PlayerToSealevelOffset(value) end

---@param value number
function ShaderProgramChunkopaque.set_DitherSeed(value) end

---@param value number
function ShaderProgramChunkopaque.set_HorizontalResolution(value) end

---@param value number
function ShaderProgramChunkopaque.set_FogWaveCounter(value) end

---@param value number
function ShaderProgramChunkopaque.set_Glow2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_Sky2D(value) end

---@param value number
function ShaderProgramChunkopaque.set_SunsetMod(value) end

---@param value Vec4f
function ShaderProgramChunkopaque.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.set_RgbaAmbientIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.set_Origin(value) end

---@param value number
function ShaderProgramChunkopaque.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramChunkopaque.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramChunkopaque.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramChunkopaque.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramChunkopaque.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramChunkopaque.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramChunkopaque.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramChunkopaque.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramChunkopaque.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramChunkopaque.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramChunkopaque.set_TimeCounter(value) end

---@param value number
function ShaderProgramChunkopaque.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramChunkopaque.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramChunkopaque.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.set_Playerpos(value) end

---@param value number
function ShaderProgramChunkopaque.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramChunkopaque.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramChunkopaque.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramChunkopaque.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramChunkopaque.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramChunkopaque.set_PerceptionEffectIntensity(value) end

---@param count number
---@param values number
function ShaderProgramChunkopaque.ColorMapRectsArray(count, values) end

---@param value number
function ShaderProgramChunkopaque.set_SeasonRel(value) end

---@param value number
function ShaderProgramChunkopaque.set_SeaLevel(value) end

---@param value number
function ShaderProgramChunkopaque.set_AtlasHeight(value) end

---@param value number
function ShaderProgramChunkopaque.set_SeasonTemperature(value) end

---@return boolean
function ShaderProgramChunkopaque.Compile() end

---@return boolean
function ShaderProgramChunkopaque.get_Disposed() end

---@return boolean
function ShaderProgramChunkopaque.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramChunkopaque.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramChunkopaque.get_LoadError() end

---@param value boolean
function ShaderProgramChunkopaque.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramChunkopaque.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkopaque.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkopaque.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramChunkopaque.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkopaque.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramChunkopaque.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramChunkopaque.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramChunkopaque.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunkopaque.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramChunkopaque.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunkopaque.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunkopaque.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunkopaque.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramChunkopaque.Use() end

function ShaderProgramChunkopaque.Stop() end

function ShaderProgramChunkopaque.Dispose() end

---@return userdata
function ShaderProgramChunkopaque.GetType() end

---@return string
function ShaderProgramChunkopaque.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramChunkopaque.Equals(obj) end

---@return number
function ShaderProgramChunkopaque.GetHashCode() end


