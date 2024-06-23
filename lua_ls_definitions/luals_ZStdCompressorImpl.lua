---@meta ZStdCompressorImpl
---@class ZStdCompressorImpl: Object
---@field ctor fun(compressionLevel: number): ZStdCompressorImpl
---@field Compress fun(output: number[], input: number[]): number
---@overload fun(output: number[], input: ReadOnlySpan`1): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ZStdCompressorImpl = {}
