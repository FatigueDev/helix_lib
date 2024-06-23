---@meta VtmlParser
---@class VtmlParser: Object
---@field ctor fun(): VtmlParser
---@field Tokenize fun(errorLogger: ILogger, vtml: string): VtmlToken[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
VtmlParser = {}
