---@meta GuiDialogConfirmRemapping
---@class GuiDialogConfirmRemapping: GuiDialog
---@field ctor fun(capi: ICoreClientAPI): GuiDialogConfirmRemapping
---@field get_ToggleKeyCombinationCode fun(): string
---@field OnFinalizeFrame fun(dt: Single): nil
---@field OnGuiOpened fun(): nil
---@field OnLevelFinalize fun(): nil
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
---@field OnOwnPlayerDataReceived fun(): nil
---@field get_DrawOrder fun(): Double
---@field get_InputOrder fun(): Double
---@field get_UnregisterOnClose fun(): boolean
---@field OnGuiClosed fun(): nil
---@field TryOpen fun(): boolean
---@overload fun(withFocus: boolean): boolean
---@field TryClose fun(): boolean
---@field UnFocus fun(): nil
---@field Focus fun(): nil
---@field Toggle fun(): nil
---@field IsOpened fun(): boolean
---@overload fun(dialogComposerName: string): boolean
---@field OnBeforeRenderFrame3D fun(deltaTime: Single): nil
---@field OnRenderGUI fun(deltaTime: Single): nil
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
---@field get_PrefersUngrabbedMouse fun(): boolean
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
---@field ToggleKeyCombinationCode string
---@field SingleComposer string
---@field DebugName string
---@field ZSize string
---@field Focused string
---@field Focusable string
---@field DialogType string
---@field DrawOrder string
---@field InputOrder string
---@field UnregisterOnClose string
---@field PrefersUngrabbedMouse string
---@field DisableMouseGrab string
---@field OnOpened string
---@field OnClosed string
---@field Composers string
---@field ignoreNextKeyPress string
---@field MouseOverCursor string
GuiDialogConfirmRemapping = {}
