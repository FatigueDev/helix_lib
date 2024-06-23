---@meta DbChunk
---@class DbChunk: Object
---@field ctor fun(): DbChunk
---@overload fun(pos: ChunkPos, data: number[]): DbChunk
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DbChunk = {}
