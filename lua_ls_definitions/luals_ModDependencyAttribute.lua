---@meta ModDependencyAttribute
---@class ModDependencyAttribute: Attribute
---@field ctor fun(modID: string, version: string): ModDependencyAttribute
---@field get_ModID fun(): string
---@field get_Version fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field get_TypeId fun(): table
---@field Match fun(obj: table): boolean
---@field IsDefaultAttribute fun(): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field ModID string
---@field Version string
---@field TypeId string
ModDependencyAttribute = {}
