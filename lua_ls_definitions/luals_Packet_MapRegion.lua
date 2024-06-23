---@meta Packet_MapRegion
---@class Packet_MapRegion: Object
---@field ctor fun(): Packet_MapRegion
---@field SetRegionX fun(value: number): nil
---@field SetRegionZ fun(value: number): nil
---@field SetLandformMap fun(value: Packet_IntMap): nil
---@field SetForestMap fun(value: Packet_IntMap): nil
---@field SetClimateMap fun(value: Packet_IntMap): nil
---@field SetGeologicProvinceMap fun(value: Packet_IntMap): nil
---@field GetGeneratedStructures fun(): Packet_GeneratedStructure[]
---@field SetGeneratedStructures fun(value: Packet_GeneratedStructure[], count: number, length: number): nil
---@overload fun(value: Packet_GeneratedStructure[]): nil
---@field GetGeneratedStructuresCount fun(): number
---@field GeneratedStructuresAdd fun(value: Packet_GeneratedStructure): nil
---@field SetModdata fun(value: number[]): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_MapRegion = {}