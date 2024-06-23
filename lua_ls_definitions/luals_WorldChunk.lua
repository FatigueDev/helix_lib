---@meta WorldChunk
---@class WorldChunk: Object
---@field get_blocksCompressed fun(): number[]
---@field set_blocksCompressed fun(value: number[]): nil
---@field get_lightCompressed fun(): number[]
---@field set_lightCompressed fun(value: number[]): nil
---@field get_lightSatCompressed fun(): number[]
---@field set_lightSatCompressed fun(value: number[]): nil
---@field get_fluidsCompressed fun(): number[]
---@field set_fluidsCompressed fun(value: number[]): nil
---@field get_EntitiesCount fun(): number
---@field set_EntitiesCount fun(value: number): nil
---@field get_Blocks fun(): IChunkBlocks
---@field get_Data fun(): IChunkBlocks
---@field get_Lighting fun(): IChunkLight
---@field get_MaybeBlocks fun(): IChunkBlocks
---@field set_MaybeBlocks fun(value: IChunkBlocks): nil
---@field get_Empty fun(): boolean
---@field set_Empty fun(value: boolean): nil
---@field get_MapChunk fun(): IMapChunk
---@field MarkModified fun(): nil
---@field IsPacked fun(): boolean
---@field TryPackAndCommit fun(chunkTTL: number): nil
---@field Pack fun(): nil
---@field TryCommitPackAndFree fun(chunkTTL: number): boolean
---@field Unpack fun(): nil
---@field Unpack_ReadOnly fun(): boolean
---@field UnpackAndReadBlock fun(index: number, layer: number): number
---@field Unpack_AndReadLight fun(index: number): UInt16
---@overload fun(index: number, lightSat: number&): UInt16
---@field Unpack_MaybeNullData fun(): nil
---@field AcquireBlockReadLock fun(): nil
---@field ReleaseBlockReadLock fun(): nil
---@field UpdateEmptyFlag fun(): nil
---@field MarkFresh fun(): nil
---@field get_LightPositions fun(): HashSet`1
---@field set_LightPositions fun(value: HashSet`1): nil
---@field get_ModData fun(): table<any, any>
---@field set_ModData fun(value: table<any, any>): nil
---@field get_Disposed fun(): boolean
---@field set_Disposed fun(value: boolean): nil
---@field get_LiveModData fun(): table<any, any>
---@field set_LiveModData fun(value: table<any, any>): nil
---@field RemoveBlockEntity fun(pos: BlockPos): boolean
---@field AddEntity fun(entity: Entity): nil
---@field RemoveEntity fun(entityId: Int64): boolean
---@field SetModdata fun(key: string, data: number[]): nil
---@field RemoveModdata fun(key: string): nil
---@field GetModdata fun(key: string): number[]
---@overload fun(key: string, data: T): nil
---@overload fun(key: string, defaultValue: T): T
---@field Dispose fun(): nil
---@field GetLocalBlockAtBlockPos fun(world: IWorldAccessor, position: BlockPos): Block
---@overload fun(world: IWorldAccessor, posX: number, posY: number, posZ: number, layer: number): Block
---@field GetLocalBlockAtBlockPos_LockFree fun(world: IWorldAccessor, pos: BlockPos, layer: number): Block
---@field GetLocalBlockEntityAtBlockPos fun(position: BlockPos): BlockEntity
---@field FinishLightDoubleBuffering fun(): nil
---@field GetLightAbsorptionAt fun(index3d: number, blockPos: BlockPos, blockTypes: Iany[]): number
---@field SetDecor fun(block: Block, index3d: number, onFace: BlockFacing): boolean
---@overload fun(block: Block, index3d: number, decorIndex: number): boolean
---@field GetDecors fun(blockAccessor: IBlockAccessor, position: BlockPos): Block[]
---@field GetDecor fun(blockAccessor: IBlockAccessor, position: BlockPos, faceAndSubposition: number): Block
---@field BreakDecor fun(world: IWorldAccessor, pos: BlockPos, side: BlockFacing, faceAndSubposition: Nullable`1): boolean
---@field BreakDecorPart fun(world: IWorldAccessor, pos: BlockPos, side: BlockFacing, faceAndSubposition: number): boolean
---@field RemoveDecorPart fun(world: IWorldAccessor, pos: BlockPos, side: BlockFacing, faceAndSubposition: number): boolean
---@field BreakAllDecorFast fun(world: IWorldAccessor, pos: BlockPos, index3d: number, callOnBrokenAsDecor: boolean): nil
---@field AdjustSelectionBoxForDecor fun(blockAccessor: IBlockAccessor, position: BlockPos, orig: Cuboidf[]): Cuboidf[]
---@field GetDecorSelectionBoxes fun(blockAccessor: IBlockAccessor, position: BlockPos): any[]
---@field SetDecors fun(newDecors: table<any, any>): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field blocksCompressed number[]
---@field lightCompressed number[]
---@field lightSatCompressed number[]
---@field fluidsCompressed number[]
---@field EntitiesCount number[]
---@field Blocks number[]
---@field Data number[]
---@field Lighting number[]
---@field MaybeBlocks number[]
---@field Empty number[]
---@field MapChunk number[]
---@field LightPositions number[]
---@field ModData number[]
---@field Disposed number[]
---@field LiveModData number[]
---@field WasModified number[]
---@field lastReadOrWrite number[]
---@field blocksCompressedTmp number[]
---@field lightCompressedTmp number[]
---@field lightSatCompressedTmp number[]
---@field fluidsCompressedTmp number[]
---@field Entities number[]
---@field BlockEntities number[]
---@field Decors number[]
WorldChunk = {}