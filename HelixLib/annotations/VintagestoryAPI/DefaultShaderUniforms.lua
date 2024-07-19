---@meta

---@class DefaultShaderUniforms
---@field ZNear number The currently configured z-near plane
---@field ZFar number The currently configured z-far plane
---@field DropShadowIntensity number
---@field ShadowRangeNear number
---@field ShadowRangeFar number
---@field ShadowZExtendNear number
---@field ShadowZExtendFar number
---@field NightVisionStrength number
---@field ToShadowMapSpaceMatrixFar number
---@field ToShadowMapSpaceMatrixNear number
---@field PointLightsCount number
---@field PointLights3 number
---@field PointLightColors3 number
---@field SunPositionScreen Vec3f
---@field SunPosition3D Vec3f
---@field LightPosition3D Vec3f
---@field PlayerViewVector Vec3f
---@field DamageVignetting number
---@field DamageVignettingSide number 0..1 (0 for left, 0.5 for left&right, 1 for right)
---@field FrostVignetting number
---@field ExtraSepia number
---@field ExtraBloom number
---@field FlagFogDensity number
---@field FlatFogStartYPos number
---@field Dusk number
---@field TimeCounter number
---@field WaterStillCounter number
---@field WaterFlowCounter number
---@field WaterWaveCounter number
---@field WindWaveCounter number
---@field WindWaveCounterHighFreq number
---@field GlitchStrength number
---@field GlitchWaviness number
---@field WindSpeed number
---@field WindWaveIntensity number
---@field WaterWaveIntensity number
---@field FogWaveCounter number
---@field GlobalWorldWarp number
---@field SeaLevel number
---@field SunsetMod number
---@field SunLightTextureId number
---@field GlowTextureId number
---@field SkyTextureId number
---@field DitherSeed number
---@field FrameWidth number
---@field PlayerToSealevelOffset number
---@field ColorMapRects4 number
---@field SeasonRel number
---@field BlockAtlasHeight number
---@field SeasonTemperature number
---@field SunSpecularIntensity number
---@field SunlightExtraBrightness number
---@field PerceptionEffectId number
---@field PerceptionEffectIntensity number
---@field PlayerPos Vec3f
---@field playerReferencePos Vec3d
DefaultShaderUniforms = {}

---@return DefaultShaderUniforms
function DefaultShaderUniforms.ctor() end

---@param temperature number
---@return number
function DefaultShaderUniforms.DescaleTemperature(temperature) end

---@param dt number
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function DefaultShaderUniforms.Update(dt, capi) end

---@return userdata
function DefaultShaderUniforms.GetType() end

---@return string
function DefaultShaderUniforms.ToString() end

---@param obj userdata
---@return boolean
function DefaultShaderUniforms.Equals(obj) end

---@return number
function DefaultShaderUniforms.GetHashCode() end


