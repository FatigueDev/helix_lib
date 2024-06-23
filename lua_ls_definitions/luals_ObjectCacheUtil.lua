---@meta ObjectCacheUtil
---@class ObjectCacheUtil: Object
---@field TryGet fun(api: ICoreAPI, key: string): T
---@field GetOrCreate fun(api: ICoreAPI, key: string, onRequireCreate: CreateCachabletableDelegate`1): T
---@field Delete fun(api: ICoreAPI, key: string): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ObjectCacheUtil = {}
