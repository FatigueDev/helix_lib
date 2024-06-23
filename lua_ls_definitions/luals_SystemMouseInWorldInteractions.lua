---@meta SystemMouseInWorldInteractions
---@class SystemMouseInWorldInteractions: ClientSystem
---@field ctor fun(game: ClientMain): SystemMouseInWorldInteractions
---@field get_Name fun(): string
---@field OnFinalizeFrame fun(dt: Single): nil
---@field OnMouseUp fun(args: MouseEvent): nil
---@field GetSystemType fun(): EnumClientSystemany
---@field OnNewFrameReadOnlyMainThread fun(deltaTime: Single): nil
---@field OnKeyDown fun(args: KeyEvent): nil
---@field OnKeyPress fun(args: KeyEvent): nil
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
---@field prevMouseLeft string
---@field prevMouseRight string
SystemMouseInWorldInteractions = {}
