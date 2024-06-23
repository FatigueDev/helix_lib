---@meta Timer
---@class Timer: Object
---@field ctor fun(): Timer
---@field get_Interval fun(): Double
---@field set_Interval fun(value: Double): nil
---@field get_MaxDeltaTime fun(): Double
---@field set_MaxDeltaTime fun(value: Double): nil
---@field Reset fun(): nil
---@field Update fun(tick: Tick): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Interval Double
---@field MaxDeltaTime Double
---@field Accumulator Double
---@field Tick Double
Timer = {}
