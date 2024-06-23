---@meta EnumerableExtensions
---@class EnumerableExtensions: Object
---@field Foreach fun(array: any[], onelement: any`1): nil
---@field Nearest fun(array: any[], getDistance: fun(outResult: any): any): T
---@field NearestDistance fun(array: any[], getDistance: fun(outResult: any): any): Double
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
EnumerableExtensions = {}
