---@meta RingArray`1
---@class RingArray`1: Object
---@field ctor fun(capacity: number): RingArray`1
---@overload fun(capacity: number, initialvalues: T[]): RingArray`1
---@field get_Item fun(index: number): T
---@field set_Item fun(index: number, value: T): nil
---@field get_EndPosition fun(): number
---@field set_EndPosition fun(value: number): nil
---@field get_Values fun(): T[]
---@field get_Length fun(): number
---@field Add fun(elem: T): nil
---@field GetEnumerator fun(): IEnumerator`1
---@field Clear fun(): nil
---@field ResizeTo fun(size: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Item T
---@field EndPosition T
---@field Values T
---@field Length T
RingArray`1 = {}