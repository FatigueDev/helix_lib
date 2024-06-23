---@meta AmbientModifier
---@class AmbientModifier: Object
---@field ctor fun(): AmbientModifier
---@field SetLerped fun(left: AmbientModifier, right: AmbientModifier, w: Single): nil
---@field Clone fun(): AmbientModifier
---@field get_DefaultAmbient fun(): AmbientModifier
---@field EnsurePopulated fun(): AmbientModifier
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field DefaultAmbient AmbientModifier
---@field FlatFogDensity AmbientModifier
---@field FlatFogYPos AmbientModifier
---@field FogMin AmbientModifier
---@field FogDensity AmbientModifier
---@field FogColor AmbientModifier
---@field AmbientColor AmbientModifier
---@field CloudDensity AmbientModifier
---@field CloudBrightness AmbientModifier
---@field LerpSpeed AmbientModifier
---@field SceneBrightness AmbientModifier
---@field FogBrightness AmbientModifier
AmbientModifier = {}