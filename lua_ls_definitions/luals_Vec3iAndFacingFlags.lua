---@meta Vec3iAndFacingFlags
---@class Vec3iAndFacingFlags: Object
---@field ctor fun(x: number, y: number, z: number, flags: number, oppositeFlags: number): Vec3iAndFacingFlags
---@overload fun(x: number, y: number, z: number, flags: number, oppositeFlags: number, flagsUL: number, flagsLR: number): Vec3iAndFacingFlags
---@field Initialize fun(value: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Vec3iAndFacingFlags = {}
