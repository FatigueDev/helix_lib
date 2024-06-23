---@meta IntDataMap2D
---@class IntDataMap2D: Object
---@field ctor fun(): IntDataMap2D
---@field get_InnerSize fun(): number
---@field CreateEmpty fun(): IntDataMap2D
---@field GetInt fun(x: number, z: number): number
---@field SetInt fun(x: number, z: number, value: number): nil
---@field GetUnpaddedInt fun(x: number, z: number): number
---@field GetUnpaddedColorLerped fun(x: Single, z: Single): number
---@field GetUnpaddedColorLerpedForNormalizedPos fun(x: Single, z: Single): number
---@field GetUnpaddedIntLerpedForBlockPos fun(x: number, z: number, regionSize: number): number
---@field GetUnpaddedIntLerped fun(x: Single, z: Single): Single
---@field GetIntLerpedCorrectly fun(x: Single, z: Single): Single
---@field GetColorLerpedCorrectly fun(x: Single, z: Single): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field InnerSize number
---@field Data number
---@field Size number
---@field TopLeftPadding number
---@field BottomRightPadding number
IntDataMap2D = {}