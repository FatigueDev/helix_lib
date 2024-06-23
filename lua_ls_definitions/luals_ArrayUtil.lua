---@meta ArrayUtil
---@class ArrayUtil: Object
---@field CreateFilled fun(quantity: number, fillCallback: fillCallback`1): T[]
---@overload fun(quantity: number, with: T): T[]
---@field FastCopy fun(src: T[], count: number): T[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ArrayUtil = {}
