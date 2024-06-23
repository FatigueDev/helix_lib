---@meta GetAutoPushIntoSlotDelegate
---@class GetAutoPushIntoSlotDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): GetAutoPushIntoSlotDelegate
---@field Invoke fun(atBlockFace: BlockFacing, fromSlot: ItemSlot): ItemSlot
---@field BeginInvoke fun(atBlockFace: BlockFacing, fromSlot: ItemSlot, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(result: IAsyncResult): ItemSlot
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
GetAutoPushIntoSlotDelegate = {}
