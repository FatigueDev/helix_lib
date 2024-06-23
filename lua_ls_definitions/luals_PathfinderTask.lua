---@meta PathfinderTask
---@class PathfinderTask: Object
---@field ctor fun(startBlockPos: BlockPos, targetBlockPos: BlockPos, maxFallHeight: number, stepHeight: Single, collisionBox: Cuboidf, searchDepth: number, mhdistanceTolerance: number): PathfinderTask
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
PathfinderTask = {}
