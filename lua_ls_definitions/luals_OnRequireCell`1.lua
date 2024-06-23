---@meta OnRequireCell`1
---@class OnRequireCell`1: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): OnRequireCell`1
---@field Invoke fun(cell: T, bounds: ElementBounds): IGuiElementCell
---@field BeginInvoke fun(cell: T, bounds: ElementBounds, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(result: IAsyncResult): IGuiElementCell
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
OnRequireCell`1 = {}