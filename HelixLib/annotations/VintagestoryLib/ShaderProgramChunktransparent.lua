---@meta

---@class ShaderProgramChunktransparent: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field TerrainTex2D number
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
---@field ForcedTransparency number
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
ShaderProgramChunktransparent = {}

---@return ShaderProgramChunktransparent
function ShaderProgramChunktransparent.ctor() end

---@param value number
function ShaderProgramChunktransparent.set_TerrainTex2D(value) end

---@param value number
function ShaderProgramChunktransparent.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramChunktransparent.set_FlatFogStart(value) end

---@param value number
function ShaderProgramChunktransparent.set_ViewDistance(value) end

---@param value number
function ShaderProgramChunktransparent.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramChunktransparent.set_ZNear(value) end

---@param value number
function ShaderProgramChunktransparent.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.set_LightPosition(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramChunktransparent.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramChunktransparent.set_GlitchStrength(value) end

---@param value Vec4f
function ShaderProgramChunktransparent.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramChunktransparent.set_FogDensityIn(value) end

---@param value number
function ShaderProgramChunktransparent.set_FogMinIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.set_Origin(value) end

---@param value number
function ShaderProgramChunktransparent.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramChunktransparent.set_ModelViewMatrix(value) end

---@param value number
function ShaderProgramChunktransparent.set_ForcedTransparency(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramChunktransparent.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramChunktransparent.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramChunktransparent.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramChunktransparent.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramChunktransparent.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramChunktransparent.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramChunktransparent.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramChunktransparent.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramChunktransparent.set_TimeCounter(value) end

---@param value number
function ShaderProgramChunktransparent.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramChunktransparent.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramChunktransparent.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.set_Playerpos(value) end

---@param value number
function ShaderProgramChunktransparent.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramChunktransparent.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramChunktransparent.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramChunktransparent.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramChunktransparent.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramChunktransparent.set_PerceptionEffectIntensity(value) end

---@param count number
---@param values number
function ShaderProgramChunktransparent.ColorMapRectsArray(count, values) end

---@param value number
function ShaderProgramChunktransparent.set_SeasonRel(value) end

---@param value number
function ShaderProgramChunktransparent.set_SeaLevel(value) end

---@param value number
function ShaderProgramChunktransparent.set_AtlasHeight(value) end

---@param value number
function ShaderProgramChunktransparent.set_SeasonTemperature(value) end

---@return boolean
function ShaderProgramChunktransparent.Compile() end

---@return boolean
function ShaderProgramChunktransparent.get_Disposed() end

---@return boolean
function ShaderProgramChunktransparent.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramChunktransparent.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramChunktransparent.get_LoadError() end

---@param value boolean
function ShaderProgramChunktransparent.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramChunktransparent.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktransparent.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktransparent.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramChunktransparent.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunktransparent.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramChunktransparent.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramChunktransparent.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramChunktransparent.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunktransparent.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramChunktransparent.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunktransparent.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunktransparent.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunktransparent.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramChunktransparent.Use() end

function ShaderProgramChunktransparent.Stop() end

function ShaderProgramChunktransparent.Dispose() end

---@return userdata
function ShaderProgramChunktransparent.GetType() end

---@return string
function ShaderProgramChunktransparent.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramChunktransparent.Equals(obj) end

---@return number
function ShaderProgramChunktransparent.GetHashCode() end


