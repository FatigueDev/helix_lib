---@meta GameTickListener
---@class GameTickListener: Object
---@field ctor fun(): GameTickListener
---@field OnTriggered fun(ellapsedMilliseconds: Int64): nil
---@field Origin fun(): table
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
GameTickListener = {}
