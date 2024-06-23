---@meta MacroBase
---@class MacroBase: Object
---@field ctor fun(): MacroBase
---@field get_Index fun(): number
---@field set_Index fun(value: number): nil
---@field get_Code fun(): string
---@field set_Code fun(value: string): nil
---@field get_Name fun(): string
---@field set_Name fun(value: string): nil
---@field get_Commands fun(): string[]
---@field set_Commands fun(value: string[]): nil
---@field get_KeyCombination fun(): KeyCombination
---@field set_KeyCombination fun(value: KeyCombination): nil
---@field get_iconTexture fun(): LoadedTexture
---@field set_iconTexture fun(value: LoadedTexture): nil
---@field GenTexture fun(capi: ICoreClientAPI, size: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Index number
---@field Code number
---@field Name number
---@field Commands number
---@field KeyCombination number
---@field iconTexture number
MacroBase = {}
