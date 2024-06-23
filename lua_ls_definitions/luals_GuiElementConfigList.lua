---@meta GuiElementConfigList
---@class GuiElementConfigList: GuiElementTextBase
---@field ctor fun(capi: ICoreClientAPI, items: any[], OnItemClick: ConfigItemClickDelegate, font: CairoFont, bounds: ElementBounds): GuiElementConfigList
---@field Autoheight fun(): nil
---@field ComposeTextElements fun(ctxs: Context, surfaces: ImageSurface): nil
---@field Refresh fun(): nil
---@field RenderInteractiveElements fun(deltaTime: Single): nil
---@field OnMouseDownOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field Dispose fun(): nil
---@field get_Text fun(): string
---@field set_Text fun(value: string): nil
---@field ComposeElements fun(ctx: Context, surface: ImageSurface): nil
---@field GetMultilineTextHeight fun(): Double
---@field DrawMultilineTextAt fun(ctx: Context, posX: Double, posY: Double, orientation: EnumTextOrientation): Double
---@field DrawTextLineAt fun(ctx: Context, text: string, posX: Double, posY: Double, textPathMode: boolean): nil
---@field GetText fun(): string
---@field get_Enabled fun(): boolean
---@field set_Enabled fun(value: boolean): nil
---@field get_InsideClipBounds fun(): ElementBounds
---@field set_InsideClipBounds fun(value: ElementBounds): nil
---@field get_RenderAsPremultipliedAlpha fun(): boolean
---@field set_RenderAsPremultipliedAlpha fun(value: boolean): nil
---@field get_HasFocus fun(): boolean
---@field get_DrawOrder fun(): Double
---@field get_Focusable fun(): boolean
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
---@field Text string
---@field Enabled string
---@field InsideClipBounds string
---@field RenderAsPremultipliedAlpha string
---@field HasFocus string
---@field DrawOrder string
---@field Focusable string
---@field Scale string
---@field MouseOverCursor string
---@field leftWidthRel string
---@field rightWidthRel string
---@field items string
---@field innerBounds string
---@field errorFont string
---@field stdFont string
---@field titleFont string
---@field unscaledPadding string
---@field textUtil string
---@field textPathMode string
---@field Font string
---@field Bounds string
---@field TabIndex string
GuiElementConfigList = {}
