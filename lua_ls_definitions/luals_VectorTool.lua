---@meta VectorTool
---@class VectorTool: Object
---@field ctor fun(): VectorTool
---@field ToVectorInFixedSystem fun(dx: Double, dy: Double, dz: Double, orientationx: Double, orientationy: Double, output: Vec3d): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
VectorTool = {}
