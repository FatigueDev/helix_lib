---@meta ChunkDataPool
---@class ChunkDataPool: Object
---@field ctor fun(chunksize: number, serverMain: ServerMain): ChunkDataPool
---@field get_ShuttingDown fun(): boolean
---@field get_Game fun(): GameMain
---@field get_Logger fun(): ILogger
---@field FreeAll fun(): nil
---@field Request fun(): ChunkData
---@field Free fun(cdata: ChunkData): nil
---@field FreeArrays fun(layer: ChunkDataLayer): nil
---@field FreeArraysAndReset fun(cdata: ChunkData): nil
---@field SlowDispose fun(): nil
---@field CountFree fun(): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field ShuttingDown boolean
---@field Game boolean
---@field Logger boolean
---@field SlowDisposeThreshold boolean
---@field CacheSize boolean
---@field BlackHoleData boolean
---@field OnlyAirBlocksData boolean
---@field server boolean
ChunkDataPool = {}