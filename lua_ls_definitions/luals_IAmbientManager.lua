---@meta IAmbientManager
---@class IAmbientManager
---@field get_Base fun(): AmbientModifier
---@field get_CurrentModifiers fun(): Orderedtable<any, any>
---@field get_BlendedFogColor fun(): Vec4f
---@field get_BlendedAmbientColor fun(): Vec3f
---@field get_BlendedFogDensity fun(): Single
---@field get_BlendedFogBrightness fun(): Single
---@field get_BlendedFlatFogDensity fun(): Single
---@field set_BlendedFlatFogDensity fun(value: Single): nil
---@field get_BlendedFlatFogYOffset fun(): Single
---@field set_BlendedFlatFogYOffset fun(value: Single): nil
---@field get_BlendedFlatFogYPosForShader fun(): Single
---@field set_BlendedFlatFogYPosForShader fun(value: Single): nil
---@field get_BlendedFogMin fun(): Single
---@field get_BlendedCloudBrightness fun(): Single
---@field get_BlendedCloudDensity fun(): Single
---@field UpdateAmbient fun(dt: Single): nil
---@field Base AmbientModifier
---@field CurrentModifiers AmbientModifier
---@field BlendedFogColor AmbientModifier
---@field BlendedAmbientColor AmbientModifier
---@field BlendedFogDensity AmbientModifier
---@field BlendedFogBrightness AmbientModifier
---@field BlendedFlatFogDensity AmbientModifier
---@field BlendedFlatFogYOffset AmbientModifier
---@field BlendedFlatFogYPosForShader AmbientModifier
---@field BlendedFogMin AmbientModifier
---@field BlendedCloudBrightness AmbientModifier
---@field BlendedCloudDensity AmbientModifier
IAmbientManager = {}