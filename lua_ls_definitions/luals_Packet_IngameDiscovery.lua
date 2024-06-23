---@meta Packet_IngameDiscovery
---@class Packet_IngameDiscovery: Object
---@field ctor fun(): Packet_IngameDiscovery
---@field SetCode fun(value: string): nil
---@field SetMessage fun(value: string): nil
---@field GetLangParams fun(): string[]
---@field SetLangParams fun(value: string[], count: number, length: number): nil
---@overload fun(value: string[]): nil
---@field GetLangParamsCount fun(): number
---@field LangParamsAdd fun(value: string): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_IngameDiscovery = {}