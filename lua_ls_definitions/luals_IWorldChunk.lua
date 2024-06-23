---@meta IWorldChunk
---@class IWorldChunk
---@field get_Empty fun(): boolean
---@field set_Empty fun(value: boolean): nil
---@field get_MapChunk fun(): IMapChunk
---@field get_Data fun(): IChunkBlocks
---@field get_Blocks fun(): IChunkBlocks
---@field get_Lighting fun(): IChunkLight
---@field get_MaybeBlocks fun(): IChunkBlocks
---@field get_Entities fun(): Entity[]
---@field get_EntitiesCount fun(): number
---@field get_BlockEntities fun(): table<any, any>
---@field set_BlockEntities fun(value: table<any, any>): nil
---@field Unpack fun(): nil
---@field Unpack_ReadOnly fun(): boolean
---@field UnpackAndReadBlock fun(index: number, layer: number): number
---@field Unpack_AndReadLight fun(index: number): UInt16
---@overload fun(index: number, lightSat: number&): UInt16
---@field MarkModified fun(): nil
---@field MarkFresh fun(): nil
---@field get_LightPositions fun(): HashSet`1
---@field set_LightPositions fun(value: HashSet`1): nil
---@field get_Disposed fun(): boolean
---@field AddEntity fun(entity: Entity): nil
---@field RemoveEntity fun(entityId: Int64): boolean
---@field SetModdata fun(key: string, data: number[]): nil
---@field RemoveModdata fun(key: string): nil
---@field GetModdata fun(key: string): number[]
---@overload fun(key: string, data: T): nil
---@overload fun(key: string, defaultValue: T): T
---@field get_LiveModData fun(): table<any, any>
---@field set_LiveModData fun(value: table<any, any>): nil
---@field GetLocalBlockAtBlockPos fun(world: IWorldAccessor, position: BlockPos): Block
---@overload fun(world: IWorldAccessor, posX: number, posY: number, posZ: number, layer: number): Block
---@field GetLocalBlockAtBlockPos_LockFree fun(world: IWorldAccessor, position: BlockPos, layer: number): Block
---@field GetLocalBlockEntityAtBlockPos fun(pos: BlockPos): BlockEntity
---@field SetDecor fun(block: Block, index3d: number, onFace: BlockFacing): boolean
---@overload fun(block: Block, index3d: number, decorIndex: number): boolean
---@field BreakDecor fun(world: IWorldAccessor, pos: BlockPos, side: BlockFacing, decorIndex: Nullable`1): boolean
---@field BreakAllDecorFast fun(world: IWorldAccessor, pos: BlockPos, index3d: number, callOnBrokenAsDecor: boolean): nil
---@field GetDecors fun(blockAccessor: IBlockAccessor, pos: BlockPos): Block[]
---@field GetDecor fun(blockAccessor: IBlockAccessor, pos: BlockPos, decorIndex: number): Block
---@field SetDecors fun(newDecors: table<any, any>): nil
---@field AdjustSelectionBoxForDecor fun(blockAccessor: IBlockAccessor, pos: BlockPos, orig: Cuboidf[]): Cuboidf[]
---@field FinishLightDoubleBuffering fun(): nil
---@field GetLightAbsorptionAt fun(index3d: number, blockPos: BlockPos, blockTypes: Iany[]): number
---@field AcquireBlockReadLock fun(): nil
---@field ReleaseBlockReadLock fun(): nil
---@field Empty boolean
---@field MapChunk boolean
---@field Data boolean
---@field Blocks boolean
---@field Lighting boolean
---@field MaybeBlocks boolean
---@field Entities boolean
---@field EntitiesCount boolean
---@field BlockEntities boolean
---@field LightPositions boolean
---@field Disposed boolean
---@field LiveModData boolean
IWorldChunk = {}
