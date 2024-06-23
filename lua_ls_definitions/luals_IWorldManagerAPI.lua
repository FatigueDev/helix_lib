---@meta IWorldManagerAPI
---@class IWorldManagerAPI
---@field get_AllLoadedMapchunks fun(): table<any, any>
---@field get_AllLoadedMapRegions fun(): table<any, any>
---@field get_AllLoadedChunks fun(): table<any, any>
---@field get_CurrentGeneratingChunkCount fun(): number
---@field get_ChunkDeletionsInQueue fun(): number
---@field get_SaveGame fun(): ISaveGame
---@field get_CurrentPlayStyle fun(): PlayStyle
---@field SetBlockLightLevels fun(lightLevels: Single[]): nil
---@field SetSunLightLevels fun(lightLevels: Single[]): nil
---@field SetSunBrightness fun(lightlevel: number): nil
---@field SetSeaLevel fun(sealevel: number): nil
---@field GetMapRegion fun(regionX: number, regionZ: number): IMapRegion
---@overload fun(index2d: Int64): IMapRegion
---@field GetMapChunk fun(chunkX: number, chunkZ: number): IServerMapChunk
---@overload fun(index2d: Int64): IMapChunk
---@field GetChunk fun(chunkX: number, chunkY: number, chunkZ: number): IServerChunk
---@overload fun(pos: BlockPos): IServerChunk
---@field ChunkIndex3D fun(chunkX: number, chunkY: number, chunkZ: number): Int64
---@field MapRegionIndex2D fun(regionX: number, regionZ: number): Int64
---@field MapRegionIndex2DByBlockPos fun(posX: number, posZ: number): Int64
---@field MapRegionPosFromIndex2D fun(index2d: Int64): Vec3i
---@field MapChunkPosFromChunkIndex2D fun(index2d: Int64): Vec2i
---@field MapChunkIndex2D fun(chunkX: number, chunkZ: number): Int64
---@field GetChunk fun(index3d: Int64): IServerChunk
---@field GetNextUniqueId fun(): Int64
---@field get_AutoGenerateChunks fun(): boolean
---@field set_AutoGenerateChunks fun(value: boolean): nil
---@field get_SendChunks fun(): boolean
---@field set_SendChunks fun(value: boolean): nil
---@field LoadChunkColumnFast fun(chunkX: number, chunkZ: number, options: ChunkLoadOptions): nil
---@field LoadChunkColumnPriority fun(chunkX: number, chunkZ: number, options: ChunkLoadOptions): nil
---@overload fun(chunkX1: number, chunkZ1: number, chunkX2: number, chunkZ2: number, options: ChunkLoadOptions): nil
---@overload fun(chunkX1: number, chunkZ1: number, chunkX2: number, chunkZ2: number, options: ChunkLoadOptions): nil
---@field LoadChunkColumn fun(chunkX: number, chunkZ: number, keepLoaded: boolean): nil
---@field PeekChunkColumn fun(chunkX: number, chunkZ: number, options: ChunkPeekOptions): nil
---@field TestChunkExists fun(chunkX: number, chunkY: number, chunkZ: number, onTested: any`1): nil
---@field TestMapChunkExists fun(chunkX: number, chunkZ: number, onTested: any`1): nil
---@field TestMapRegionExists fun(regionX: number, regionZ: number, onTested: any`1): nil
---@field BroadcastChunk fun(chunkX: number, chunkY: number, chunkZ: number, onlyIfInRange: boolean): nil
---@field HasChunk fun(chunkX: number, chunkY: number, chunkZ: number, player: IServerPlayer): boolean
---@field SendChunk fun(chunkX: number, chunkY: number, chunkZ: number, player: IServerPlayer, onlyIfInRange: boolean): nil
---@field ResendMapChunk fun(chunkX: number, chunkZ: number, onlyIfInRange: boolean): nil
---@field UnloadChunkColumn fun(chunkX: number, chunkZ: number): nil
---@field DeleteChunkColumn fun(chunkX: number, chunkZ: number): nil
---@field DeleteMapRegion fun(regionX: number, regionZ: number): nil
---@field get_MapSizeX fun(): number
---@field get_MapSizeY fun(): number
---@field get_MapSizeZ fun(): number
---@field GetSurfacePosY fun(posX: number, posZ: number): Nullable`1
---@field get_RegionSize fun(): number
---@field get_ChunkSize fun(): number
---@field get_Seed fun(): number
---@field get_CurrentWorldName fun(): string
---@field get_DefaultSpawnPosition fun(): number[]
---@field SetDefaultSpawnPosition fun(x: number, y: number, z: number): nil
---@field GetBlockId fun(name: AssetLocation): number
---@field SunFloodChunkColumnForWorldGen fun(chunks: IWorldChunk[], chunkX: number, chunkZ: number): nil
---@field SunFloodChunkColumnNeighboursForWorldGen fun(chunks: IWorldChunk[], chunkX: number, chunkZ: number): nil
---@field FullRelight fun(minPos: BlockPos, maxPos: BlockPos): nil
---@field GetBlockAccessor fun(synchronize: boolean, relight: boolean, strict: boolean, debug: boolean): IBlockAccessor
---@field GetBlockAccessorBulkUpdate fun(synchronize: boolean, relight: boolean, debug: boolean): IBulkBlockAccessor
---@field GetBlockAccessorRevertable fun(synchronize: boolean, relight: boolean, debug: boolean): IBlockAccessorRevertable
---@field GetBlockAccessorPrefetch fun(synchronize: boolean, relight: boolean): IBlockAccessorPrefetch
---@field GetCachingBlockAccessor fun(synchronize: boolean, relight: boolean): ICachingBlockAccessor
---@field AllLoadedMapchunks table<any, any>
---@field AllLoadedMapRegions table<any, any>
---@field AllLoadedChunks table<any, any>
---@field CurrentGeneratingChunkCount table<any, any>
---@field ChunkDeletionsInQueue table<any, any>
---@field SaveGame table<any, any>
---@field CurrentPlayStyle table<any, any>
---@field AutoGenerateChunks table<any, any>
---@field SendChunks table<any, any>
---@field MapSizeX table<any, any>
---@field MapSizeY table<any, any>
---@field MapSizeZ table<any, any>
---@field RegionSize table<any, any>
---@field ChunkSize table<any, any>
---@field Seed table<any, any>
---@field CurrentWorldName table<any, any>
---@field DefaultSpawnPosition table<any, any>
IWorldManagerAPI = {}