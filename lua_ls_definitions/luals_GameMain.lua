---@meta GameMain
---@class GameMain: Object
---@field ctor fun(): GameMain
---@field get_WaterBlock fun(): Block
---@field set_WaterBlock fun(value: Block): nil
---@field get_World fun(): IWorldAccessor
---@field RandomPitch fun(): Single
---@field GetRecipeRegistry fun(code: string): RecipeRegistryBase
---@field RegisterRecipeRegistry fun(recipeRegistryCode: string): T
---@field get_InteresectionTester fun(): AABBIntersectionTest
---@field get_MapSize fun(): Vec3i
---@field RayTraceForSelection fun(supplier: IWorldIntersectionSupplier, fromPos: Vec3d, toPos: Vec3d, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(fromPos: Vec3d, toPos: Vec3d, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(fromPos: Vec3d, pitch: Single, yaw: Single, range: Single, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(ray: Ray, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(supplier: IWorldIntersectionSupplier, ray: Ray, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(player: IPlayer, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@field GetPickingRay fun(pos: Vec3d, pitch: Single, yaw: Single, pickingRange: Single): Ray
---@overload fun(fromPos: Vec3d, toPos: Vec3d): Ray
---@field GetIntersectingEntities fun(basePos: BlockPos, collisionBoxes: Cuboidf[], matches: ActionConsumable`1): Entity[]
---@field GetEntitiesAround fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): Entity[]
---@field GetEntitiesInsideCuboid fun(startPos: BlockPos, endPos: BlockPos, matches: ActionConsumable`1): Entity[]
---@field GetBlockIntersectionBoxes fun(pos: BlockPos): Cuboidf[]
---@field get_blockAccessor fun(): IBlockAccessor
---@field GetBlock fun(pos: BlockPos): Block
---@field IsValidPos fun(pos: BlockPos): boolean
---@field GetItem fun(itemCode: AssetLocation): Item
---@field GetBlock fun(blockCode: AssetLocation): Block
---@field SearchBlocks fun(wildcard: AssetLocation): Block[]
---@field SearchItems fun(wildcard: AssetLocation): Item[]
---@field GetCachingBlockAccessor fun(synchronize: boolean, relight: boolean): ICachingBlockAccessor
---@field GetLockFreeBlockAccessor fun(): IBlockAccessor
---@field GetBlockAccessor fun(synchronize: boolean, relight: boolean, strict: boolean, debug: boolean): IBlockAccessor
---@field GetBlockAccessorBulkUpdate fun(synchronize: boolean, relight: boolean, debug: boolean): IBulkBlockAccessor
---@field GetBlockAccessorBulkMinimalUpdate fun(synchronize: boolean, debug: boolean): IBulkBlockAccessor
---@field GetBlockAccessorRevertable fun(synchronize: boolean, relight: boolean, debug: boolean): IBlockAccessorRevertable
---@field GetBlockAccessorPrefetch fun(synchronize: boolean, relight: boolean): IBlockAccessorPrefetch
---@field GetBlockAccessorMapChunkLoading fun(synchronize: boolean, debug: boolean): IBulkBlockAccessor
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field WaterBlock Block
---@field World Block
---@field InteresectionTester Block
---@field MapSize Block
---@field blockAccessor Block
---@field ItemsByCode Block
GameMain = {}