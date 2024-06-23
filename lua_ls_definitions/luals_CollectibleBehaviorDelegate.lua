---@meta CollectibleBehaviorDelegate
---@class CollectibleBehaviorDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): CollectibleBehaviorDelegate
---@field Invoke fun(behavior: CollectibleBehavior, handling: EnumHandling&): nil
---@field BeginInvoke fun(behavior: CollectibleBehavior, handling: EnumHandling&, callback: AsyncCallback, object: table): IAsyncResult
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
CollectibleBehaviorDelegate = {}
