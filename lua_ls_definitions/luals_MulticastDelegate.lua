---@meta MulticastDelegate
---@class MulticastDelegate: Delegate
---@field GetObjectData fun(info: SerializationInfo, context: StreamingContext): nil
---@field Equals fun(obj: table): boolean
---@field GetInvocationList fun(): Delegate[]
---@field op_Equality fun(d1: MulticastDelegate, d2: MulticastDelegate): boolean
---@field op_Inequality fun(d1: MulticastDelegate, d2: MulticastDelegate): boolean
---@field GetHashCode fun(): number
---@field get_Target fun(): table
---@field Clone fun(): table
---@field DynamicInvoke fun(args: table[]): table
---@field get_Method fun(): MethodInfo
---@field GetType fun(): any
---@field ToString fun(): string
---@field Target table
---@field Method table
MulticastDelegate = {}