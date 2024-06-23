---@meta Vec2f
---@class Vec2f: Object
---@field ctor fun(): Vec2f
---@overload fun(x: Single, y: Single): Vec2f
---@overload fun(size: Size2i): Vec2f
---@field ToString fun(): string
---@field Length fun(): Single
---@field DistanceTo fun(x: Single, y: Single): Single
---@field Distance fun(x1: Single, y1: Single, x2: Single, y2: Single): Single
---@field Clone fun(): Vec2f
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field op_Subtraction fun(left: Vec2f, right: Vec2f): Vec2f
---@field op_Addition fun(left: Vec2f, right: Vec2f): Vec2f
---@overload fun(left: Vec2f, right: Single): Vec2f
---@overload fun(left: Single, right: Vec2f): Vec2f
---@overload fun(left: Vec2f, right: Single): Vec2f
---@field op_Multiply fun(left: Vec2f, right: Single): Vec2f
---@overload fun(left: Single, right: Vec2f): Vec2f
---@overload fun(left: Vec2f, right: Double): Vec2f
---@overload fun(left: Double, right: Vec2f): Vec2f
---@overload fun(left: Vec2f, right: Vec2f): Double
---@field op_Division fun(left: Vec2f, right: Single): Vec2f
---@field op_Addition fun(left: Vec2f, right: Vec2i): Vec2f
---@field op_Equality fun(left: Vec2f, right: Vec2f): boolean
---@field op_Inequality fun(left: Vec2f, right: Vec2f): boolean
---@field GetType fun(): any
Vec2f = {}