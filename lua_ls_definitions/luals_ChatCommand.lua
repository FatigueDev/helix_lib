---@meta ChatCommand
---@class ChatCommand: Object
---@field CallHandler fun(player: IPlayer, groupId: number, args: CmdArgs): nil
---@field GetDescription fun(): string
---@field GetSyntax fun(): string
---@field GetHelpMessage fun(): string
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ChatCommand = {}
