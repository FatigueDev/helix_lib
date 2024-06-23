---@meta IZStdDecompressor
---@class IZStdDecompressor
---@field Decompress fun(dest: number[], src: number[]): nil
---@overload fun(buffer: number[], compressedFrame: ReadOnlySpan`1): number
IZStdDecompressor = {}
