---@meta Packet_VariantPart
---@class Packet_VariantPart: Object
---@field ctor fun(): Packet_VariantPart
---@field SetCode fun(value: string): nil
---@field SetValue fun(value: string): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_VariantPart = {}
