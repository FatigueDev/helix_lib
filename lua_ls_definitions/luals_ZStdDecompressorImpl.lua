---@meta ZStdDecompressorImpl
---@class ZStdDecompressorImpl: Object
---@field ctor fun(): ZStdDecompressorImpl
---@field Decompress fun(output: number[], input: number[]): nil
---@overload fun(output: number[], input: ReadOnlySpan`1): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ZStdDecompressorImpl = {}
