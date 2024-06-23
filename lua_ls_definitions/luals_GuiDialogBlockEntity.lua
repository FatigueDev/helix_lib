---@meta GuiDialogBlockEntity
---@class GuiDialogBlockEntity: GuiDialogGeneric
---@field ctor fun(dialogTitle: string, inventory: InventoryBase, blockEntityPos: BlockPos, capi: ICoreClientAPI): GuiDialogBlockEntity
---@overload fun(dialogTitle: string, blockEntityPos: BlockPos, capi: ICoreClientAPI): GuiDialogBlockEntity
---@field get_IsDuplicate fun(): boolean
---@field get_Inventory fun(): InventoryBase
---@field get_BlockEntityPosition fun(): BlockPos
---@field get_OpenSound fun(): AssetLocation
---@field set_OpenSound fun(value: AssetLocation): nil
---@field get_CloseSound fun(): AssetLocation
---@field set_CloseSound fun(value: AssetLocation): nil
---@field OnFinalizeFrame fun(dt: Single): nil
---@field OnRenderGUI fun(deltaTime: Single): nil
---@field OnGuiOpened fun(): nil
---@field TryOpen fun(): boolean
---@field OnGuiClosed fun(): nil
---@field get_PrefersUngrabbedMouse fun(): boolean
---@field ReloadValues fun(): nil
---@field GetFreePos fun(code: string): EnumPosFlag
---@field OccupyPos fun(code: string, pos: EnumPosFlag): nil
---@field FreePos fun(code: string, pos: EnumPosFlag): nil
---@field get_UnregisterOnClose fun(): boolean
---@field get_Attributes fun(): ITreeAttribute
---@field get_ToggleKeyCombinationCode fun(): string
---@field Recompose fun(): nil
---@field UnfocusElements fun(): nil
---@field FocusElement fun(index: number): nil
---@field IsInRangeOfBlock fun(blockEntityPos: BlockPos): boolean
---@field get_SingleComposer fun(): GuiComposer
---@field set_SingleComposer fun(value: GuiComposer): nil
---@field get_DebugName fun(): string
---@field get_ZSize fun(): Single
---@field get_Focused fun(): boolean
---@field get_Focusable fun(): boolean
---@field get_DialogType fun(): EnumDialogany
---@field add_OnOpened fun(value: Action): nil
---@field remove_OnOpened fun(value: Action): nil
---@field add_OnClosed fun(value: Action): nil
---@field remove_OnClosed fun(value: Action): nil
---@field OnBlockTexturesLoaded fun(): nil
---@field OnLevelFinalize fun(): nil
---@field OnOwnPlayerDataReceived fun(): nil
---@field get_DrawOrder fun(): Double
---@field get_InputOrder fun(): Double
---@field TryOpen fun(withFocus: boolean): boolean
---@field TryClose fun(): boolean
---@field UnFocus fun(): nil
---@field Focus fun(): nil
---@field Toggle fun(): nil
---@field IsOpened fun(): boolean
---@overload fun(dialogComposerName: string): boolean
---@field OnBeforeRenderFrame3D fun(deltaTime: Single): nil
---@field OnKeyDown fun(args: KeyEvent): nil
---@field OnKeyPress fun(args: KeyEvent): nil
---@field OnKeyUp fun(args: KeyEvent): nil
---@field OnEscapePressed fun(): boolean
---@field OnMouseEnterSlot fun(slot: ItemSlot): boolean
---@field OnMouseLeaveSlot fun(itemSlot: ItemSlot): boolean
---@field OnMouseClickSlot fun(itemSlot: ItemSlot): boolean
---@field OnMouseDown fun(args: MouseEvent): nil
---@field OnMouseUp fun(args: MouseEvent): nil
---@field OnMouseMove fun(args: MouseEvent): nil
---@field OnMouseWheel fun(args: MouseWheelEventArgs): nil
---@field ShouldReceiveRenderEvents fun(): boolean
---@field ShouldReceiveKeyboardEvents fun(): boolean
---@field ShouldReceiveMouseEvents fun(): boolean
---@field RequiresUngrabbedMouse fun(): boolean
---@field get_DisableMouseGrab fun(): boolean
---@field CaptureAllInputs fun(): boolean
---@field CaptureRawMouse fun(): boolean
---@field Dispose fun(): nil
---@field ClearComposers fun(): nil
---@field IsInRangeOf fun(pos: Vec3d): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field IsDuplicate boolean
---@field Inventory boolean
---@field BlockEntityPosition boolean
---@field OpenSound boolean
---@field CloseSound boolean
---@field PrefersUngrabbedMouse boolean
---@field UnregisterOnClose boolean
---@field Attributes boolean
---@field ToggleKeyCombinationCode boolean
---@field SingleComposer boolean
---@field DebugName boolean
---@field ZSize boolean
---@field Focused boolean
---@field Focusable boolean
---@field DialogType boolean
---@field DrawOrder boolean
---@field InputOrder boolean
---@field DisableMouseGrab boolean
---@field OnOpened boolean
---@field OnClosed boolean
---@field DialogTitle boolean
---@field Composers boolean
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor boolean
---@field EnumPosFlag boolean
GuiDialogBlockEntity = {}
