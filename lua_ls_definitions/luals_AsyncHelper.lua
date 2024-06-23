---@meta AsyncHelper
---@class AsyncHelper: Object
---@field ctor fun(): AsyncHelper
---@field CanProceedOnThisThread fun(started: number&): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
AsyncHelper = {}
