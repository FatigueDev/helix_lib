---@meta GuiElementSkillItemGrid
---@class GuiElementSkillItemGrid: GuiElement
---@field ctor fun(capi: ICoreClientAPI, skillItems: any[], columns: number, rows: number, OnSlotClick: any`1, bounds: ElementBounds): GuiElementSkillItemGrid
---@field get_Focusable fun(): boolean
---@field ComposeElements fun(ctx: Context, surface: ImageSurface): nil
---@field RenderInteractiveElements fun(deltaTime: Single): nil
---@field OnMouseDownOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field Dispose fun(): nil
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
---@field OnMouseUp fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnMouseEnterSlot fun(api: ICoreClientAPI, slot: ItemSlot): boolean
---@field OnMouseLeaveSlot fun(api: ICoreClientAPI, slot: ItemSlot): boolean
---@field OnMouseMove fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field OnMouseWheel fun(api: ICoreClientAPI, args: MouseWheelEventArgs): nil
---@field OnKeyDown fun(api: ICoreClientAPI, args: KeyEvent): nil
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
---@field InsideClipBounds boolean
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean
---@field DrawOrder boolean
---@field Scale boolean
---@field MouseOverCursor boolean
---@field OnSlotClick boolean
---@field OnSlotOver boolean
---@field selectedIndex boolean
---@field Bounds boolean
---@field TabIndex boolean
GuiElementSkillItemGrid = {}
