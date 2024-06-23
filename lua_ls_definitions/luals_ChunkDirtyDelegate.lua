---@meta ChunkDirtyDelegate
---@class ChunkDirtyDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): ChunkDirtyDelegate
---@field Invoke fun(chunkCoord: Vec3i, chunk: IWorldChunk, reason: EnumChunkDirtyReason): nil
---@field BeginInvoke fun(chunkCoord: Vec3i, chunk: IWorldChunk, reason: EnumChunkDirtyReason, callback: AsyncCallback, object: table): IAsyncResult
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
ChunkDirtyDelegate = {}