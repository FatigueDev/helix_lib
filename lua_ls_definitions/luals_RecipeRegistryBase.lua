---@meta RecipeRegistryBase
---@class RecipeRegistryBase: Object
---@field ToBytes fun(resolver: IWorldAccessor, data: number[]&, quantity: number&): nil
---@field FromBytes fun(resolver: IWorldAccessor, quantity: number, data: number[]): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
RecipeRegistryBase = {}
