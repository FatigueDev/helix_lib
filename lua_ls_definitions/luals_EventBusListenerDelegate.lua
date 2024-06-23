---@meta EventBusListenerDelegate
---@class EventBusListenerDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): EventBusListenerDelegate
---@field Invoke fun(eventName: string, handling: EnumHandling&, data: IAttribute): nil
---@field BeginInvoke fun(eventName: string, handling: EnumHandling&, data: IAttribute, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(handling: EnumHandling&, result: IAsyncResult): nil
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
EventBusListenerDelegate = {}
