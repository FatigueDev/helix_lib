---@meta IWorldIntersectionSupplier
---@class IWorldIntersectionSupplier
---@field GetBlock fun(pos: BlockPos): Block
---@field GetBlockIntersectionBoxes fun(pos: BlockPos): Cuboidf[]
---@field GetEntitiesAround fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): Entity[]
---@field IsValidPos fun(pos: BlockPos): boolean
---@field get_MapSize fun(): Vec3i
---@field get_blockAccessor fun(): IBlockAccessor
---@field MapSize Vec3i
---@field blockAccessor Vec3i
IWorldIntersectionSupplier = {}
