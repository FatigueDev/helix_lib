---@meta PlayerAreaSelection
---@class PlayerAreaSelection: ClientSystem
---@field ctor fun(game: ClientMain): PlayerAreaSelection
---@field OnMouseDown fun(args: MouseEvent): nil
---@field OnMouseUp fun(args: MouseEvent): nil
---@field RayTracePlayerSelection fun(player: IPlayer, blockSelection: BlockSelection&, filter: BlockFilter): nil
---@field RayTraceWorld fun(ray: Ray, blockSelection: BlockSelection&, filter: BlockFilter): nil
---@field GetPickingRay fun(pos: Vec3d, pitch: Single, yaw: Single, pickingRange: Single): Ray
---@field get_Name fun(): string
---@field GetSystemType fun(): EnumClientSystemany
---@field GetBlock fun(pos: BlockPos): Block
---@field GetBlockIntersectionBoxes fun(pos: BlockPos): Cuboidf[]
---@field get_blockAccessor fun(): IBlockAccessor
---@field get_MapSize fun(): Vec3i
---@field IsValidPos fun(pos: BlockPos): boolean
---@field GetEntitiesAround fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): Entity[]
---@field OnNewFrameReadOnlyMainThread fun(deltaTime: Single): nil
---@field OnKeyDown fun(args: KeyEvent): nil
---@field OnKeyPress fun(args: KeyEvent): nil
---@field OnKeyUp fun(args: KeyEvent): nil
---@field OnMouseMove fun(args: MouseEvent): nil
---@field OnMouseWheel fun(args: MouseWheelEventArgs): nil
---@field OnTouchStart fun(e: TouchEventArgs): nil
---@field OnTouchMove fun(e: TouchEventArgs): nil
---@field OnTouchEnd fun(e: TouchEventArgs): nil
---@field OnUseEntity fun(e: OnUseEntityArgs): nil
---@field OnHitEntity fun(e: OnUseEntityArgs): nil
---@field OnOwnPlayerDataReceived fun(): nil
---@field OnMouseEnterSlot fun(slot: ItemSlot): boolean
---@field OnMouseLeaveSlot fun(itemSlot: ItemSlot): boolean
---@field SeperateThreadTickIntervalMs fun(): number
---@field OnSeperateThreadGameTick fun(dt: Single): nil
---@field OnMouseClickSlot fun(itemSlot: ItemSlot): boolean
---@field OnBlockTexturesLoaded fun(): nil
---@field OnServerIdentificationReceived fun(): nil
---@field Dispose fun(game: ClientMain): nil
---@field CaptureAllInputs fun(): boolean
---@field CaptureRawMouse fun(): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Name string
---@field blockAccessor string
---@field MapSize string
PlayerAreaSelection = {}