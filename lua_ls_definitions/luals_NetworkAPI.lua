---@meta NetworkAPI
---@class NetworkAPI: ClientSystem
---@field ctor fun(game: ClientMain): NetworkAPI
---@field SendPlayerNowReady fun(): nil
---@field GetChannelState fun(channelName: string): EnumChannelState
---@field RegisterChannel fun(channelName: string): IClientNetworkChannel
---@field SendArbitraryPacket fun(data: number[]): nil
---@field SendBlockEntityPacket fun(x: number, y: number, z: number, packetId: number, data: number[]): nil
---@overload fun(pos: BlockPos, packetId: number, data: number[]): nil
---@overload fun(x: number, y: number, z: number, packetClient: table): nil
---@field SendPacketClient fun(packetClient: table): nil
---@field get_Name fun(): string
---@field GetSystemType fun(): EnumClientSystemany
---@field SendHandInteraction fun(mouseButton: number, blockSelection: BlockSelection, entitySelection: EntitySelection, beforeUseType: EnumHandInteract, handInteract: number, firstEvent: boolean, cancelReason: EnumItemUseCancelReason): nil
---@field SendEntityPacket fun(entityid: Int64, packetId: number, data: number[]): nil
---@overload fun(entityid: Int64, packetClient: table): nil
---@field GetChannel fun(channelName: string): INetworkChannel
---@field SendBlockEntityPacket fun(pos: BlockPos, packetId: number, data: T): nil
---@field OnNewFrameReadOnlyMainThread fun(deltaTime: Single): nil
---@field OnKeyDown fun(args: KeyEvent): nil
---@field OnKeyPress fun(args: KeyEvent): nil
---@field OnMouseUp fun(args: MouseEvent): nil
---@field OnKeyUp fun(args: KeyEvent): nil
---@field OnMouseDown fun(args: MouseEvent): nil
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
NetworkAPI = {}