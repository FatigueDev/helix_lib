---@meta

---@class ShaderProgramChunktopsoil: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field TerrainTex2D number
---@field TerrainTexLinear2D number
---@field AlphaTest number
---@field BlockTextureSize Vec2f
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
---@field RgbaFogIn Vec4f
---@field RgbaAmbientIn Vec3f
---@field FogDensityIn number
---@field FogMinIn number
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
ShaderProgramChunktopsoil = {}

---@return ShaderProgramChunktopsoil
function ShaderProgramChunktopsoil.ctor() end

---@param value number
function ShaderProgramChunktopsoil.set_TerrainTex2D(value) end

---@param value number
function ShaderProgramChunktopsoil.set_TerrainTexLinear2D(value) end

---@param value number
function ShaderProgramChunktopsoil.set_AlphaTest(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.set_BlockTextureSize(value) end

---@param value number
function ShaderProgramChunktopsoil.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_FlatFogStart(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ViewDistance(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ZNear(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.set_LightPosition(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramChunktopsoil.set_GlitchStrength(value) end

---@param value Vec4f
function ShaderProgramChunktopsoil.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramChunktopsoil.set_FogDensityIn(value) end

---@param value number
function ShaderProgramChunktopsoil.set_FogMinIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.set_Origin(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramChunktopsoil.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramChunktopsoil.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramChunktopsoil.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramChunktopsoil.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramChunktopsoil.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramChunktopsoil.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_TimeCounter(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.set_Playerpos(value) end

---@param value number
function ShaderProgramChunktopsoil.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramChunktopsoil.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramChunktopsoil.set_PerceptionEffectIntensity(value) end

---@param count number
---@param values number
function ShaderProgramChunktopsoil.ColorMapRectsArray(count, values) end

---@param value number
function ShaderProgramChunktopsoil.set_SeasonRel(value) end

---@param value number
function ShaderProgramChunktopsoil.set_SeaLevel(value) end

---@param value number
function ShaderProgramChunktopsoil.set_AtlasHeight(value) end

---@param value number
function ShaderProgramChunktopsoil.set_SeasonTemperature(value) end

---@return boolean
function ShaderProgramChunktopsoil.Compile() end

---@return boolean
function ShaderProgramChunktopsoil.get_Disposed() end

---@return boolean
function ShaderProgramChunktopsoil.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramChunktopsoil.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramChunktopsoil.get_LoadError() end

---@param value boolean
function ShaderProgramChunktopsoil.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramChunktopsoil.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktopsoil.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktopsoil.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramChunktopsoil.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktopsoil.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramChunktopsoil.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramChunktopsoil.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramChunktopsoil.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunktopsoil.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramChunktopsoil.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunktopsoil.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunktopsoil.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunktopsoil.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramChunktopsoil.Use() end

function ShaderProgramChunktopsoil.Stop() end

function ShaderProgramChunktopsoil.Dispose() end

---@return userdata
function ShaderProgramChunktopsoil.GetType() end

---@return string
function ShaderProgramChunktopsoil.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramChunktopsoil.Equals(obj) end

---@return number
function ShaderProgramChunktopsoil.GetHashCode() end


