---@meta IColorPresets
---@class IColorPresets
---@field Initialize fun(asset: IAsset): nil
---@field OnUpdateSetting fun(): nil
---@field GetColor fun(key: string): number
IColorPresets = {}
