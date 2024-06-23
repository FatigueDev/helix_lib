---@meta ICommandArgumentParser
---@class ICommandArgumentParser
---@field get_ArgCount fun(): number
---@field get_LastErrorMessage fun(): string
---@field get_ArgumentName fun(): string
---@field get_IsMandatoryArg fun(): boolean
---@field get_IsMissing fun(): boolean
---@field set_IsMissing fun(value: boolean): nil
---@field PreProcess fun(args: TextCommandCallingArgs): nil
---@field TryProcess fun(args: TextCommandCallingArgs, onReady: any`1): EnumParseResult
---@field GetValidRange fun(args: CmdArgs): string[]
---@field GetValue fun(): table
---@field GetSyntax fun(): string
---@field GetSyntaxExplanation fun(indent: string): string
---@field SetValue fun(data: table): nil
---@field ArgCount number
---@field LastErrorMessage number
---@field ArgumentName number
---@field IsMandatoryArg number
---@field IsMissing number
ICommandArgumentParser = {}