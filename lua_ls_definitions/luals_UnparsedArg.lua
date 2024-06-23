---@meta UnparsedArg
---@class UnparsedArg: ArgumentParserBase
---@field ctor fun(argName: string, validRange: string[]): UnparsedArg
---@field GetValue fun(): table
---@field GetValidRange fun(args: CmdArgs): string[]
---@field SetValue fun(data: table): nil
---@field TryProcess fun(args: TextCommandCallingArgs, onReady: any`1): EnumParseResult
---@field get_LastErrorMessage fun(): string
---@field get_ArgumentName fun(): string
---@field get_IsMandatoryArg fun(): boolean
---@field get_IsMissing fun(): boolean
---@field set_IsMissing fun(value: boolean): nil
---@field get_ArgCount fun(): number
---@field GetSyntax fun(): string
---@field GetSyntaxUnformatted fun(): string
---@field GetSyntaxExplanation fun(indent: string): string
---@field GetLastError fun(): string
---@field PreProcess fun(args: TextCommandCallingArgs): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg string
---@field IsMissing string
---@field ArgCount string
UnparsedArg = {}
