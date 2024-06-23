---@meta Vec4i
---@class Vec4i: Object
---@field ctor fun(): Vec4i
---@overload fun(pos: BlockPos, w: number): Vec4i
---@overload fun(x: number, y: number, z: number, w: number): Vec4i
---@field Equals fun(other: Vec4i): boolean
---@field GetHashCode fun(): number
---@field HorDistanceSqTo fun(x: Double, z: Double): Single
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
Vec4i = {}