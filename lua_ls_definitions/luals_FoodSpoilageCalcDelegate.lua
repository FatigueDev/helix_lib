---@meta FoodSpoilageCalcDelegate
---@class FoodSpoilageCalcDelegate: MulticastDelegate
---@field ctor fun(object: table, method: IntPtr): FoodSpoilageCalcDelegate
---@field Invoke fun(spoilState: Single, stack: ItemStack, byEntity: EntityAgent): Single
---@field BeginInvoke fun(spoilState: Single, stack: ItemStack, byEntity: EntityAgent, callback: AsyncCallback, object: table): IAsyncResult
---@field EndInvoke fun(result: IAsyncResult): Single
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
FoodSpoilageCalcDelegate = {}
