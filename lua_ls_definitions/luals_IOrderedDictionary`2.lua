---@meta IOrderedDictionary`2
---@class IOrderedDictionary`2
---@field Add fun(key: TKey, value: TValue): number
---@field Insert fun(index: number, key: TKey, value: TValue): nil
---@field GetValueAtIndex fun(index: number): TValue
---@field SetAtIndex fun(index: number, value: TValue): nil
IOrderedDictionary`2 = {}
