---@meta DummyNetwork
---@class DummyNetwork: Object
---@field ctor fun(): DummyNetwork
---@field Start fun(lock1: Monitortable, lock2: Monitortable): nil
---@field Clear fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DummyNetwork = {}
