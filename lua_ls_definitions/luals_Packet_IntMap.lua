---@meta Packet_IntMap
---@class Packet_IntMap: Object
---@field ctor fun(): Packet_IntMap
---@field GetData fun(): number[]
---@field SetData fun(value: number[], count: number, length: number): nil
---@overload fun(value: number[]): nil
---@field GetDataCount fun(): number
---@field DataAdd fun(value: number): nil
---@field SetSize fun(value: number): nil
---@field SetTopLeftPadding fun(value: number): nil
---@field SetBottomRightPadding fun(value: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_IntMap = {}