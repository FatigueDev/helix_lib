---@meta CmdEntity
---@class CmdEntity: Object
---@field ctor fun(server: ServerMain): CmdEntity
---@field Each fun(args: TextCommandCallingArgs, onEntity: EntityEachDelegate, index: number): TextCommandResult
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
CmdEntity = {}
