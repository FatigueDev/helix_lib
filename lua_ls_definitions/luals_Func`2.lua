---@meta Func`2
---@class Func`2: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): Func`2
---@field Invoke fun(t1: T1): TResult
---@field BeginInvoke fun(t1: T1, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(result: IAsyncResult): TResult
---@field GetObjectData fun(info: SerializationInfo, context: StreamingContext): nil
---@field Equals fun(obj: table): boolean
---@field GetInvocationList fun(): Delegate[]
---@field GetHashCode fun(): number
---@field get_Target fun(): table
---@field Clone fun(): table
---@field DynamicInvoke fun(args: table[]): table
---@field get_Method fun(): MethodInfo
---@field GetType fun(): any
---@field ToString fun(): string
---@field Target table
---@field Method table
Func`2 = {}
