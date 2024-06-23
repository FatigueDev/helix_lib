---@meta ClientMapChunk
---@class ClientMapChunk: Object
---@field ctor fun(): ClientMapChunk
---@field get_TopRockIdMap fun(): number[]
---@field get_YMax fun(): UInt16
---@field set_YMax fun(value: UInt16): nil
---@field get_CaveHeightDistort fun(): number[]
---@field set_CaveHeightDistort fun(value: number[]): nil
---@field get_SedimentaryThicknessMap fun(): UInt16[]
---@field get_SnowAccum fun(): Concurrenttable<any, any>
---@field SetData fun(key: string, data: number[]): nil
---@field GetData fun(key: string): number[]
---@field MarkFresh fun(): nil
---@field MarkDirty fun(): nil
---@field SetModdata fun(key: string, data: number[]): nil
---@field RemoveModdata fun(key: string): nil
---@field GetModdata fun(key: string): number[]
---@overload fun(key: string, data: T): nil
---@overload fun(key: string, defaultValue: T): T
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field TopRockIdMap number[]
---@field YMax number[]
---@field CaveHeightDistort number[]
---@field SedimentaryThicknessMap number[]
---@field SnowAccum number[]
ClientMapChunk = {}