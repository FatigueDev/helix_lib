---@meta DefaultShaderUniforms
---@class DefaultShaderUniforms: Object
---@field ctor fun(): DefaultShaderUniforms
---@field DescaleTemperature fun(temperature: Single): number
---@field Update fun(dt: Single, capi: ICoreClientAPI): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DefaultShaderUniforms = {}
