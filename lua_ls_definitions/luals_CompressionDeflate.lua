---@meta CompressionDeflate
---@class CompressionDeflate: Object
---@field ctor fun(): CompressionDeflate
---@field Compress fun(input: MemoryStream): number[]
---@overload fun(data: number[]): number[]
---@overload fun(data: number[], len: number, reserveOffset: number): number[]
---@overload fun(ushortdata: UInt16[]): number[]
---@overload fun(intdata: number[], length: number): number[]
---@overload fun(uintdata: Unumber[], length: number): number[]
---@field Decompress fun(fi: number[]): number[]
---@overload fun(fi: number[], dest: number[]): nil
---@overload fun(fi: number[], offset: number, length: number): number[]
---@field DecompressAndSize fun(fi: number[], buffer: number[]&): number
---@overload fun(compressedData: number[], offset: number, length: number, buffer: number[]&): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
CompressionDeflate = {}
