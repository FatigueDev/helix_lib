---@meta BlockAccessorMovable
---@class BlockAccessorMovable: BlockAccessorBase
---@field ctor fun(parent: BlockAccessorBase, pos: Vec3d): BlockAccessorMovable
---@field get_CurrentPos fun(): EntityPos
---@field set_CurrentPos fun(value: EntityPos): nil
---@field get_Dirty fun(): boolean
---@field set_Dirty fun(value: boolean): nil
---@field get_CenterOfMass fun(): Vec3d
---@field set_CenterOfMass fun(value: Vec3d): nil
---@field get_TrackSelection fun(): boolean
---@field get_selectionTrackingOriginalPos fun(): BlockPos
---@field set_selectionTrackingOriginalPos fun(value: BlockPos): nil
---@field get_subDimensionId fun(): number
---@field set_subDimensionId fun(value: number): nil
---@field SetSubDimensionId fun(subId: number): nil
---@field SetSelectionTrackingSubId_Server fun(subId: number): nil
---@field ClearChunks fun(): nil
---@field UnloadUnusedServerChunks fun(): nil
---@field ChunkCoordsInSameDimension fun(cyA: number, cyB: number): boolean
---@field AdjustPosForSubDimension fun(pos: BlockPos): nil
---@field MarkChunkDirty fun(x: number, y: number, z: number): nil
---@field CollectChunksForSending fun(players: IPlayer[]): nil
---@field MarkChunkForSendingToPlayersInRange fun(chunk: IWorldChunk, index: Int64, player: IPlayer): nil
---@field GetRenderOffset fun(dt: Single): FastVec3d
---@field GetRenderTransformMatrix fun(currentModelViewMatrix: Single[], playerPos: Vec3d): Single[]
---@field ApplyCurrentRotation fun(result: Single[]): nil
---@field GetBlockId fun(posX: number, posY: number, posZ: number, layer: number): number
---@field GetBlockOrNull fun(posX: number, posY: number, posZ: number, layer: number): Block
---@field SetBlock fun(blockId: number, pos: BlockPos, byItemstack: ItemStack): nil
---@overload fun(blockId: number, pos: BlockPos, layer: number): nil
---@field ExchangeBlock fun(blockId: number, pos: BlockPos): nil
---@field ReceiveClientChunk fun(cindex: Int64, chunk: IWorldChunk, world: IWorldAccessor): nil
---@field RecalculateCenterOfMass fun(world: IWorldAccessor): nil
---@field get_MapSizeX fun(): number
---@field get_MapSizeY fun(): number
---@field get_MapSizeZ fun(): number
---@field get_ChunkSize fun(): number
---@field get_RegionSize fun(): number
---@field get_MapSize fun(): Vec3i
---@field get_RegionMapSizeX fun(): number
---@field get_RegionMapSizeY fun(): number
---@field get_RegionMapSizeZ fun(): number
---@field get_UpdateSnowAccumMap fun(): boolean
---@field set_UpdateSnowAccumMap fun(value: boolean): nil
---@field GetBlockId fun(posX: number, posY: number, posZ: number): number
---@overload fun(pos: BlockPos): number
---@field GetBlock fun(posX: number, posY: number, posZ: number): Block
---@overload fun(pos: BlockPos): Block
---@overload fun(pos: BlockPos, layer: number): Block
---@overload fun(pos: BlockPos, layer: number): number
---@overload fun(blockid: number): Block
---@overload fun(posX: number, posY: number, posZ: number, layer: number): Block
---@field GetMostSolidBlock fun(pos: BlockPos): Block
---@overload fun(posX: number, posY: number, posZ: number): Block
---@field SetBlockInternal fun(blockId: number, pos: BlockPos, chunk: IWorldChunk, synchronize: boolean, relight: boolean, layer: number, byItemstack: ItemStack): nil
---@field WalkStructures fun(minpos: BlockPos, maxpos: BlockPos, onStructure: any`1): nil
---@overload fun(pos: BlockPos, onStructure: any`1): nil
---@field WalkBlocks fun(minPos: BlockPos, maxPos: BlockPos, onBlock: Action`4, centerOrder: boolean): nil
---@field SearchBlocks fun(minPos: BlockPos, maxPos: BlockPos, onBlock: ActionConsumable`2, onChunkMissing: Action`3): nil
---@field SearchFluidBlocks fun(minPos: BlockPos, maxPos: BlockPos, onBlock: ActionConsumable`2, onChunkMissing: Action`3): nil
---@field GetBlock fun(code: AssetLocation): Block
---@overload fun(blockId: number, pos: BlockPos): nil
---@field IsValidPos fun(posX: number, posY: number, posZ: number): boolean
---@overload fun(pos: BlockPos): boolean
---@field BreakBlock fun(pos: BlockPos, byPlayer: IPlayer, dropQuantityMultiplier: Single): nil
---@field IsNotTraversable fun(pos: BlockPos): boolean
---@overload fun(x: Double, y: Double, z: Double): boolean
---@field GetChunk fun(chunkX: number, chunkY: number, chunkZ: number): IWorldChunk
---@field GetChunkAtBlockPos fun(posX: number, posY: number, posZ: number): IWorldChunk
---@overload fun(pos: BlockPos): IWorldChunk
---@field MarkChunkDecorsModified fun(pos: BlockPos): nil
---@field GetMapChunk fun(chunkX: number, chunkZ: number): IMapChunk
---@overload fun(chunkPos: Vec2i): IMapChunk
---@field GetMapRegion fun(regionX: number, regionZ: number): IMapRegion
---@field Commit fun(): any[]
---@field Rollback fun(): nil
---@field SpawnBlockEntity fun(classname: string, position: BlockPos, byItemStack: ItemStack): nil
---@overload fun(be: BlockEntity): nil
---@field RemoveBlockEntity fun(position: BlockPos): nil
---@field GetBlockEntity fun(position: BlockPos): BlockEntity
---@field MarkBlockEntityDirty fun(pos: BlockPos): nil
---@field MarkBlockDirty fun(pos: BlockPos, skipPlayer: IPlayer): nil
---@field MarkBlockModified fun(pos: BlockPos): nil
---@field MarkBlockDirty fun(pos: BlockPos, OnRetesselated: Action): nil
---@field TriggerNeighbourBlockUpdate fun(pos: BlockPos): nil
---@field GetLightLevel fun(posX: number, posY: number, posZ: number, type: EnumLightLevelany): number
---@overload fun(pos: BlockPos, type: EnumLightLevelany): number
---@field GetTerrainMapheightAt fun(pos: BlockPos): number
---@field GetRainMapHeightAt fun(posX: number, posZ: number): number
---@overload fun(pos: BlockPos): number
---@field GetMapChunkAtBlockPos fun(pos: BlockPos): IMapChunk
---@field GetClimateAt fun(pos: BlockPos, mode: EnumGetClimateMode, totalDays: Double): ClimateCondition
---@overload fun(pos: BlockPos, baseClimate: ClimateCondition, mode: EnumGetClimateMode, totalDays: Double): ClimateCondition
---@overload fun(pos: BlockPos, climate: number): ClimateCondition
---@field GetWindSpeedAt fun(pos: Vec3d): Vec3d
---@overload fun(pos: BlockPos): Vec3d
---@field DamageBlock fun(pos: BlockPos, facing: BlockFacing, damage: Single): nil
---@field UpdateRainHeightMap fun(oldBlock: Block, newBlock: Block, pos: BlockPos, mapchunk: IMapChunk): nil
---@field GetLightRGBs fun(posX: number, posY: number, posZ: number): Vec4f
---@field GetLightRGBsAsInt fun(posX: number, posY: number, posZ: number): number
---@field GetLightRGBs fun(pos: BlockPos): Vec4f
---@overload fun(chunkIndex3D: Int64): IWorldChunk
---@field IsSideSolid fun(x: number, y: number, z: number, facing: BlockFacing): boolean
---@field GetDistanceToRainFall fun(pos: BlockPos, horziontalSearchWidth: number, verticalSearchWidth: number): number
---@field MarkAbsorptionChanged fun(oldAbsorption: number, newAbsorption: number, pos: BlockPos): nil
---@field RemoveBlockLight fun(oldLightHsv: number[], pos: BlockPos): nil
---@field SetDecor fun(block: Block, pos: BlockPos, onFace: BlockFacing): boolean
---@overload fun(block: Block, pos: BlockPos, decorIndex: number): boolean
---@field GetDecors fun(position: BlockPos): Block[]
---@field GetDecor fun(position: BlockPos, faceAndSubPosition: number): Block
---@field BreakDecor fun(pos: BlockPos, side: BlockFacing, faceAndSubposition: Nullable`1): boolean
---@field SetDecorsBulk fun(chunkIndex: Int64, newDecors: table<any, any>): nil
---@field GetBlockEntity fun(position: BlockPos): T
---@field CreateMiniDimension fun(position: Vec3d): IMiniDimension
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field CurrentPos EntityPos
---@field Dirty EntityPos
---@field CenterOfMass EntityPos
---@field TrackSelection EntityPos
---@field selectionTrackingOriginalPos EntityPos
---@field subDimensionId EntityPos
---@field MapSizeX EntityPos
---@field MapSizeY EntityPos
---@field MapSizeZ EntityPos
---@field ChunkSize EntityPos
---@field RegionSize EntityPos
---@field MapSize EntityPos
---@field RegionMapSizeX EntityPos
---@field RegionMapSizeY EntityPos
---@field RegionMapSizeZ EntityPos
---@field UpdateSnowAccumMap EntityPos
---@field selectionTrackingSubDimension_Client EntityPos
---@field subDimensionSize EntityPos
---@field originOffset EntityPos
---@field MaxMiniDimensions EntityPos
---@field subDimensionSizeInChunks EntityPos
---@field subDimensionIndexZMultiplier EntityPos
---@field dimensionSizeY EntityPos
---@field dimensionId EntityPos
---@field DefaultLightLevel EntityPos
BlockAccessorMovable = {}
