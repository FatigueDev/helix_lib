---@meta WeightedFloat
---@class WeightedFloat: WeightedValue`1
---@field ctor fun(): WeightedFloat
---@overload fun(value: Single, weight: Single): WeightedFloat
---@field New fun(value: Single, weight: Single): WeightedFloat
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader): nil
---@field Clone fun(): WeightedFloat
---@field SetLerped fun(left: WeightedFloat, right: WeightedFloat, w: Single): nil
---@field Set fun(value: Single, weight: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
WeightedFloat = {}
