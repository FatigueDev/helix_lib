---@meta DictExtensions
---@class DictExtensions: Object
---@field AddRange fun(dict: Itable<any, any>, elems: Itable<any, any>): nil
---@field Get fun(dict: Itable<any, any>, key: K, defaultValue: V): V
---@field Remove fun(dict: Concurrenttable<any, any>, key: K): nil
---@field RemoveAll fun(dict: Itable<any, any>, predicate: Func`3): nil
---@field RemoveAllByKey fun(dict: Itable<any, any>, predicate: fun(outResult: any): any): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DictExtensions = {}