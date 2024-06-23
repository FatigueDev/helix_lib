---@meta ServerProgram
---@class ServerProgram: Object
---@field ctor fun(): ServerProgram
---@field Main fun(args: string[]): nil
---@field FrameworkInfos fun(): string
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ServerProgram = {}
