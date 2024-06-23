---@meta KeyCombination
---@class KeyCombination: Object
---@field ctor fun(): KeyCombination
---@field IsMouseButton fun(KeyCode: number): boolean
---@field ToString fun(): string
---@field Clone fun(): KeyCombination
---@field PrimaryAsString fun(): string
---@field SecondaryAsString fun(): string
---@field GetType fun(): any
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
KeyCombination = {}