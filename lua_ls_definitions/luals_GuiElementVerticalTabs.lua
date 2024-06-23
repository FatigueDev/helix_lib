---@meta GuiElementVerticalTabs
---@class GuiElementVerticalTabs: GuiElementTextBase
---@field ctor fun(capi: ICoreClientAPI, tabs: GuiTab[], font: CairoFont, selectedFont: CairoFont, bounds: ElementBounds, onTabClicked: Action`2): GuiElementVerticalTabs
---@field get_Focusable fun(): boolean
---@field ComposeTextElements fun(ctxStatic: Context, surfaceStatic: ImageSurface): nil
---@field RenderInteractiveElements fun(deltaTime: Single): nil
---@field OnKeyDown fun(api: ICoreClientAPI, args: KeyEvent): nil
---@field OnMouseDownOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field SetValue fun(index: number): nil
---@overload fun(index: number, triggerHandler: boolean): nil
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
---@field Text boolean
---@field Enabled boolean
---@field InsideClipBounds boolean
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean
---@field DrawOrder boolean
---@field Scale boolean
---@field MouseOverCursor boolean
---@field ActiveElement boolean
---@field Right boolean
---@field ToggleTabs boolean
---@field textUtil boolean
---@field textPathMode boolean
---@field Font boolean
---@field Bounds boolean
---@field TabIndex boolean
GuiElementVerticalTabs = {}