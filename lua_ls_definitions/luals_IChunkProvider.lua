---@meta IChunkProvider
---@class IChunkProvider
---@field get_Logger fun(): ILogger
---@field GetChunk fun(chunkX: number, chunkY: number, chunkZ: number): IWorldChunk
---@field GetUnpackedChunkFast fun(chunkX: number, chunkY: number, chunkZ: number, notRecentlyAccessed: boolean): IWorldChunk
---@field ChunkIndex3D fun(chunkX: number, chunkY: number, chunkZ: number): Int64
---@field Logger ILogger
IChunkProvider = {}
