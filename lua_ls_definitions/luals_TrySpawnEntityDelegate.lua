---@meta TrySpawnEntityDelegate
---@class TrySpawnEntityDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): TrySpawnEntityDelegate
---@field Invoke fun(blockAccessor: IBlockAccessor, properties: EntityProperties&, spawnPosition: Vec3d, herdId: Int64): boolean
---@field BeginInvoke fun(blockAccessor: IBlockAccessor, properties: EntityProperties&, spawnPosition: Vec3d, herdId: Int64, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(properties: EntityProperties&, result: IAsyncResult): boolean
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
TrySpawnEntityDelegate = {}
