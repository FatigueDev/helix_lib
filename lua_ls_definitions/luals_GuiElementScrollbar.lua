---@meta GuiElementScrollbar
---@class GuiElementScrollbar: GuiElementControl
---@field ctor fun(capi: ICoreClientAPI, onNewScrollbarValue: any`1, bounds: ElementBounds): GuiElementScrollbar
---@field get_Focusable fun(): boolean
---@field get_ScrollConversionFactor fun(): Single
---@field get_CurrentYPosition fun(): Single
---@field set_CurrentYPosition fun(value: Single): nil
---@field ComposeElements fun(ctxStatic: Context, surface: ImageSurface): nil
---@field RecomposeHandle fun(): nil
---@field RenderInteractiveElements fun(deltaTime: Single): nil
---@field SetHeights fun(visibleHeight: Single, totalHeight: Single): nil
---@field SetNewTotalHeight fun(totalHeight: Single): nil
---@field SetScrollbarPosition fun(pos: number): nil
---@field OnMouseWheel fun(api: ICoreClientAPI, args: MouseWheelEventArgs): nil
---@field OnMouseDownOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnMouseUp fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnMouseMove fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnKeyDown fun(api: ICoreClientAPI, args: KeyEvent): nil
---@field TriggerChanged fun(): nil
---@field ScrollToBottom fun(): nil
---@field EnsureVisible fun(posX: Double, posY: Double): nil
---@field Dispose fun(): nil
---@field get_Enabled fun(): boolean
---@field set_Enabled fun(value: boolean): nil
---@field get_InsideClipBounds fun(): ElementBounds
---@field set_InsideClipBounds fun(value: ElementBounds): nil
---@field get_RenderAsPremultipliedAlpha fun(): boolean
---@field set_RenderAsPremultipliedAlpha fun(value: boolean): nil
---@field get_HasFocus fun(): boolean
---@field get_DrawOrder fun(): Double
---@field get_Scale fun(): Double
---@field set_Scale fun(value: Double): nil
---@field OnFocusGained fun(): nil
---@field OnFocusLost fun(): nil
---@field PostRenderInteractiveElements fun(deltaTime: Single): nil
---@field RenderFocusOverlay fun(deltaTime: Single): nil
---@field BeforeCalcBounds fun(): nil
---@field DialogRoundRectangle fun(ctx: Context, bounds: ElementBounds): nil
---@field ElementRoundRectangle fun(ctx: Context, bounds: ElementBounds, isBackground: boolean, radius: Double): nil
---@field ShadePath fun(ctx: Context, thickness: Double): nil
---@field EmbossRoundRectangleDialog fun(ctx: Context, x: Double, y: Double, width: Double, height: Double, inverse: boolean): nil
---@field EmbossRoundRectangleElement fun(ctx: Context, x: Double, y: Double, width: Double, height: Double, inverse: boolean, depth: number, radius: number): nil
---@overload fun(ctx: Context, bounds: ElementBounds, inverse: boolean, depth: number, radius: number): nil
---@field RenderBoundsDebug fun(): nil
---@field OnMouseDown fun(api: ICoreClientAPI, mouse: MouseEvent): nil
---@field OnMouseUpOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnMouseEnterSlot fun(api: ICoreClientAPI, slot: ItemSlot): boolean
---@field OnMouseLeaveSlot fun(api: ICoreClientAPI, slot: ItemSlot): boolean
---@field OnKeyUp fun(api: ICoreClientAPI, args: KeyEvent): nil
---@field OnKeyPress fun(api: ICoreClientAPI, args: KeyEvent): nil
---@field IsPositionInside fun(posX: number, posY: number): boolean
---@field get_MouseOverCursor fun(): string
---@field OutlineColor fun(): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Focusable boolean
---@field ScrollConversionFactor boolean
---@field CurrentYPosition boolean
---@field Enabled boolean
---@field InsideClipBounds boolean
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean
---@field DrawOrder boolean
---@field Scale boolean
---@field MouseOverCursor boolean
---@field mouseDownOnScrollbarHandle boolean
---@field mouseDownStartY boolean
---@field zOffset boolean
---@field DefaultScrollbarWidth boolean
---@field DeafultScrollbarPadding boolean
---@field Bounds boolean
---@field TabIndex boolean
GuiElementScrollbar = {}