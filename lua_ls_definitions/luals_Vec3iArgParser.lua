---@meta Vec3iArgParser
---@class Vec3iArgParser: ArgumentParserBase
---@field ctor fun(argName: string, api: ICoreAPI, isMandatoryArg: boolean): Vec3iArgParser
---@field PreProcess fun(args: TextCommandCallingArgs): nil
---@field TryProcess fun(args: TextCommandCallingArgs, onReady: any`1): EnumParseResult
---@field GetValue fun(): table
---@field SetValue fun(data: table): nil
---@field get_LastErrorMessage fun(): string
---@field get_ArgumentName fun(): string
---@field get_IsMandatoryArg fun(): boolean
---@field get_IsMissing fun(): boolean
---@field set_IsMissing fun(value: boolean): nil
---@field get_ArgCount fun(): number
---@field GetValidRange fun(args: CmdArgs): string[]
---@field GetSyntax fun(): string
---@field GetSyntaxUnformatted fun(): string
---@field GetSyntaxExplanation fun(indent: string): string
---@field GetLastError fun(): string
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg string
---@field IsMissing string
---@field ArgCount string
Vec3iArgParser = {}
