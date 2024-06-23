---@meta BlockChunkDataLayer
---@class BlockChunkDataLayer: ChunkDataLayer
---@field ctor fun(chunkDataPool: ChunkDataPool): BlockChunkDataLayer
---@field SelectDelegateBlockClient fun(getBlockAir: fun(outResult: any): any): fun(outResult: any): any
---@field Dispose fun(): nil
---@field GetUnsafe_PaletteCheck fun(index3d: number): number
---@field GetUnsafe fun(index3d: number): number
---@field Set fun(index3d: number, value: number): nil
---@field SetUnsafe fun(index3d: number, value: number): nil
---@field SetZero fun(index3d: number): nil
---@field SetBulk fun(index3d: number, lenX: number, lenZ: number, value: number): nil
---@field Clear fun(datas: any[]): nil
---@field PopulateWithAir fun(): nil
---@field ClearPaletteOutsideMaxValue fun(maxValue: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
BlockChunkDataLayer = {}