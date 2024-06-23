---@meta DisposableWriter
---@class DisposableWriter: Object
---@field ctor fun(filename: string, clearOldFiles: boolean): DisposableWriter
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DisposableWriter = {}
