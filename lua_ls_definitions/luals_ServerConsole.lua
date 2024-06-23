---@meta ServerConsole
---@class ServerConsole: Object
---@field ctor fun(server: ServerMain, token: CancellationToken): ServerConsole
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ServerConsole = {}
