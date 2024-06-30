---@meta

---@class ShaderProgramChunkliquid: ShaderProgram, IDisposable, ShaderProgramBase, ShaderProgram, IShaderProgram
---@field TerrainTex2D number
---@field DepthTex2D number
---@field BlockTextureSize Vec2f
---@field TextureAtlasSize Vec2f
---@field WaterFlowCounter number
---@field FrameSize Vec2f
---@field SunPosRel Vec3f
---@field SunColor Vec3f
---@field ReflectColor Vec3f
---@field WaterWaveCounter number
---@field SunSpecularIntensity number
---@field DropletIntensity number
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
---@field WaterStillCounter number
---@field RgbaFogIn Vec4f
---@field RgbaAmbientIn Vec3f
---@field FogDensityIn number
---@field FogMinIn number
---@field Origin Vec3f
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field PlayerViewVec Vec3f
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
---@field TimeCounter number
---@field WindWaveCounterHighFreq number
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
ShaderProgramChunkliquid = {}

---@return ShaderProgramChunkliquid
function ShaderProgramChunkliquid.ctor() end

---@param value number
function ShaderProgramChunkliquid.set_TerrainTex2D(value) end

---@param value number
function ShaderProgramChunkliquid.set_DepthTex2D(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_BlockTextureSize(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_TextureAtlasSize(value) end

---@param value number
function ShaderProgramChunkliquid.set_WaterFlowCounter(value) end

---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_FrameSize(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_SunPosRel(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_SunColor(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_ReflectColor(value) end

---@param value number
function ShaderProgramChunkliquid.set_WaterWaveCounter(value) end

---@param value number
function ShaderProgramChunkliquid.set_SunSpecularIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_DropletIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_FlatFogDensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_FlatFogStart(value) end

---@param value number
function ShaderProgramChunkliquid.set_ViewDistance(value) end

---@param value number
function ShaderProgramChunkliquid.set_ViewDistanceLod0(value) end

---@param value number
function ShaderProgramChunkliquid.set_ZNear(value) end

---@param value number
function ShaderProgramChunkliquid.set_ZFar(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_LightPosition(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowMapFar2D(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowMapWidthInv(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowMapHeightInv(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowMapNear2D(value) end

---@param value number
function ShaderProgramChunkliquid.set_WindWaveCounter(value) end

---@param value number
function ShaderProgramChunkliquid.set_GlitchStrength(value) end

---@param value number
function ShaderProgramChunkliquid.set_WaterStillCounter(value) end

---@param value Vec4f
function ShaderProgramChunkliquid.set_RgbaFogIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_RgbaAmbientIn(value) end

---@param value number
function ShaderProgramChunkliquid.set_FogDensityIn(value) end

---@param value number
function ShaderProgramChunkliquid.set_FogMinIn(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_Origin(value) end

---@param value number
function ShaderProgramChunkliquid.set_ProjectionMatrix(value) end

---@param value number
function ShaderProgramChunkliquid.set_ModelViewMatrix(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_PlayerViewVec(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowRangeFar(value) end

---@param value number
function ShaderProgramChunkliquid.set_ToShadowMapSpaceMatrixFar(value) end

---@param value number
function ShaderProgramChunkliquid.set_ShadowRangeNear(value) end

---@param value number
function ShaderProgramChunkliquid.set_ToShadowMapSpaceMatrixNear(value) end

---@param value number
function ShaderProgramChunkliquid.set_GlitchStrengthFL(value) end

---@param value number
function ShaderProgramChunkliquid.set_NightVisionStrength(value) end

---@param count number
---@param values number
function ShaderProgramChunkliquid.PointLightsArray(count, values) end

---@param count number
---@param values number
function ShaderProgramChunkliquid.PointLightColorsArray(count, values) end

---@param value number
function ShaderProgramChunkliquid.set_PointLightQuantity(value) end

---@param value number
function ShaderProgramChunkliquid.set_TimeCounter(value) end

---@param value number
function ShaderProgramChunkliquid.set_WindWaveCounterHighFreq(value) end

---@param value number
function ShaderProgramChunkliquid.set_WindSpeed(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.set_Playerpos(value) end

---@param value number
function ShaderProgramChunkliquid.set_GlobalWarpIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_GlitchWaviness(value) end

---@param value number
function ShaderProgramChunkliquid.set_WindWaveIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_WaterWaveIntensity(value) end

---@param value number
function ShaderProgramChunkliquid.set_PerceptionEffectId(value) end

---@param value number
function ShaderProgramChunkliquid.set_PerceptionEffectIntensity(value) end

---@param count number
---@param values number
function ShaderProgramChunkliquid.ColorMapRectsArray(count, values) end

---@param value number
function ShaderProgramChunkliquid.set_SeasonRel(value) end

---@param value number
function ShaderProgramChunkliquid.set_SeaLevel(value) end

---@param value number
function ShaderProgramChunkliquid.set_AtlasHeight(value) end

---@param value number
function ShaderProgramChunkliquid.set_SeasonTemperature(value) end

---@return boolean
function ShaderProgramChunkliquid.Compile() end

---@return boolean
function ShaderProgramChunkliquid.get_Disposed() end

---@return boolean
function ShaderProgramChunkliquid.get_ClampTexturesToEdge() end

---@param value boolean
function ShaderProgramChunkliquid.set_ClampTexturesToEdge(value) end

---@return boolean
function ShaderProgramChunkliquid.get_LoadError() end

---@param value boolean
function ShaderProgramChunkliquid.set_LoadError(value) end

---@param uniformName string
---@param isLinear boolean
function ShaderProgramChunkliquid.SetCustomSampler(uniformName, isLinear) end

---@param uniformName string
---@param value number
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkliquid.Uniforms2(uniformName, count, values) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkliquid.Uniforms3(uniformName, count, values) end

---@param uniformName string
---@param value Vec4f
function ShaderProgramChunkliquid.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function ShaderProgramChunkliquid.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function ShaderProgramChunkliquid.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@param matrix Matrix4&
function ShaderProgramChunkliquid.UniformMatrix(uniformName, matrix) end

---@param uniformName string
---@return boolean
function ShaderProgramChunkliquid.HasUniform(uniformName) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunkliquid.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
function ShaderProgramChunkliquid.BindTexture2D(samplerName, textureId) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function ShaderProgramChunkliquid.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunkliquid.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function ShaderProgramChunkliquid.UniformMatrices(uniformName, count, matrix) end

function ShaderProgramChunkliquid.Use() end

function ShaderProgramChunkliquid.Stop() end

function ShaderProgramChunkliquid.Dispose() end

---@return userdata
function ShaderProgramChunkliquid.GetType() end

---@return string
function ShaderProgramChunkliquid.ToString() end

---@param obj userdata
---@return boolean
function ShaderProgramChunkliquid.Equals(obj) end

---@return number
function ShaderProgramChunkliquid.GetHashCode() end


