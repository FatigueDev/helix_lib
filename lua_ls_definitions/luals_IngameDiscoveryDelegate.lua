---@meta IngameDiscoveryDelegate
---@class IngameDiscoveryDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): IngameDiscoveryDelegate
---@field Invoke fun(sender: table, discoveryCode: string, text: string): nil
---@field BeginInvoke fun(sender: table, discoveryCode: string, text: string, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(result: IAsyncResult): nil
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
IngameDiscoveryDelegate = {}