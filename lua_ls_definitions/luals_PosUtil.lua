---@meta PosUtil
---@class PosUtil: Object
---@field SetOrCreate fun(pos: BlockPos, sourcePos: BlockPos): BlockPos
---@overload fun(pos: Vec3f, sourcePos: Vec3f): Vec3f
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
PosUtil = {}
