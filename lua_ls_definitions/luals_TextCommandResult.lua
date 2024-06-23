---@meta TextCommandResult
---@class TextCommandResult: Object
---@field ctor fun(): TextCommandResult
---@field Success fun(message: string, data: table): TextCommandResult
---@field Error fun(message: string, errorCode: string): TextCommandResult
---@field get_Deferred fun(): TextCommandResult
---@field get_DeferredHandler fun(): OnCommandDelegate
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Deferred TextCommandResult
---@field DeferredHandler TextCommandResult
---@field ErrorCode TextCommandResult
---@field StatusMessage TextCommandResult
---@field Status TextCommandResult
---@field Data TextCommandResult
---@field MessageParams TextCommandResult
TextCommandResult = {}
