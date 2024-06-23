---@meta ClientProgram
---@class ClientProgram: Object
---@field ctor fun(rawArgs: string[]): ClientProgram
---@field Main fun(rawArgs: string[]): nil
---@field ServerThreadStart fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ClientProgram = {}
