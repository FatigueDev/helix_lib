---@meta GuiElementHoverText
---@class GuiElementHoverText: GuiElementTextBase
---@field ctor fun(capi: ICoreClientAPI, text: string, font: CairoFont, maxWidth: number, bounds: ElementBounds, background: TextBackground): GuiElementHoverText
---@field get_RenderColor fun(): Vec4f
---@field set_RenderColor fun(value: Vec4f): nil
---@field get_ZPosition fun(): Single
---@field set_ZPosition fun(value: Single): nil
---@field get_IsVisible fun(): boolean
---@field get_IsNowShown fun(): boolean
---@field get_DrawOrder fun(): Double
---@field BeforeCalcBounds fun(): nil
---@field ComposeElements fun(ctx: Context, surface: ImageSurface): nil
---@field OutlineColor fun(): number
---@field RenderBoundsDebug fun(): nil
---@field RenderInteractiveElements fun(deltaTime: Single): nil
---@field SetNewText fun(text: string): nil
---@field SetAutoDisplay fun(on: boolean): nil
---@field SetVisible fun(on: boolean): nil
---@field SetAutoWidth fun(on: boolean): nil
---@field SetFollowMouse fun(on: boolean): nil
---@field OnMouseDownOnElement fun(api: ICoreClientAPI, args: MouseEvent): nil
---@field Dispose fun(): nil
---@field get_Text fun(): string
---@field set_Text fun(value: string): nil
---@field ComposeTextElements fun(ctx: Context, surface: ImageSurface): nil
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
---@field get_Focusable fun(): boolean
---@field get_Scale fun(): Double
---@field set_Scale fun(value: Double): nil
---@field OnFocusGained fun(): nil
---@field OnFocusLost fun(): nil
---@field PostRenderInteractiveElements fun(deltaTime: Single): nil
---@field RenderFocusOverlay fun(deltaTime: Single): nil
---@field DialogRoundRectangle fun(ctx: Context, bounds: ElementBounds): nil
---@field ElementRoundRectangle fun(ctx: Context, bounds: ElementBounds, isBackground: boolean, radius: Double): nil
---@field ShadePath fun(ctx: Context, thickness: Double): nil
---@field EmbossRoundRectangleDialog fun(ctx: Context, x: Double, y: Double, width: Double, height: Double, inverse: boolean): nil
---@field EmbossRoundRectangleElement fun(ctx: Context, x: Double, y: Double, width: Double, height: Double, inverse: boolean, depth: number, radius: number): nil
---@overload fun(ctx: Context, bounds: ElementBounds, inverse: boolean, depth: number, radius: number): nil
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
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field RenderColor Vec4f
---@field ZPosition Vec4f
---@field IsVisible Vec4f
---@field IsNowShown Vec4f
---@field DrawOrder Vec4f
---@field Text Vec4f
---@field Enabled Vec4f
---@field InsideClipBounds Vec4f
---@field RenderAsPremultipliedAlpha Vec4f
---@field HasFocus Vec4f
---@field Focusable Vec4f
---@field Scale Vec4f
---@field MouseOverCursor Vec4f
---@field fillBounds Vec4f
---@field Background Vec4f
---@field DefaultBackground Vec4f
---@field textUtil Vec4f
---@field textPathMode Vec4f
---@field Font Vec4f
---@field Bounds Vec4f
---@field TabIndex Vec4f
GuiElementHoverText = {}
