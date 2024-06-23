---@meta WeightedFloatArray
---@class WeightedFloatArray: WeightedValue`1
---@field ctor fun(): WeightedFloatArray
---@overload fun(value: Single[], weight: Single): WeightedFloatArray
---@field New fun(value: Single[], weight: Single): WeightedFloatArray
---@field Clone fun(): WeightedFloatArray
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader): nil
---@field SetLerped fun(left: WeightedFloatArray, right: WeightedFloatArray, w: Single): nil
---@field Set fun(value: Single[], weight: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
WeightedFloatArray = {}