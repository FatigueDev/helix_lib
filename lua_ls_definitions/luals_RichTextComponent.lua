---@meta RichTextComponent
---@class RichTextComponent: RichTextComponentBase
---@field ctor fun(api: ICoreClientAPI, displayText: string, font: CairoFont): RichTextComponent
---@field ComposeElements fun(ctx: Context, surface: ImageSurface): nil
---@field RenderInteractiveElements fun(deltaTime: Single, renderX: Double, renderY: Double, renderZ: Double): nil
---@field CalcBounds fun(flowPath: TextFlowPath[], currentLineHeight: Double, offsetX: Double, lineY: Double, nextOffsetX: Double&): EnumCalcBoundsResult
---@field get_MouseOverCursor fun(): string
---@field get_BoundsPerLine fun(): LineRectangled[]
---@field get_UnscaledMarginTop fun(): Double
---@field set_UnscaledMarginTop fun(value: Double): nil
---@field get_PaddingRight fun(): Double
---@field set_PaddingRight fun(value: Double): nil
---@field get_PaddingLeft fun(): Double
---@field set_PaddingLeft fun(value: Double): nil
---@field get_Float fun(): EnumFloat
---@field set_Float fun(value: EnumFloat): nil
---@field get_RenderColor fun(): Vec4f
---@field set_RenderColor fun(value: Vec4f): nil
---@field get_VerticalAlign fun(): EnumVerticalAlign
---@field set_VerticalAlign fun(value: EnumVerticalAlign): nil
---@field OnMouseMove fun(args: MouseEvent): nil
---@field OnMouseDown fun(args: MouseEvent): nil
---@field OnMouseUp fun(args: MouseEvent): nil
---@field Dispose fun(): nil
---@field UseMouseOverCursor fun(richtextBounds: ElementBounds): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field MouseOverCursor string
---@field BoundsPerLine string
---@field UnscaledMarginTop string
---@field PaddingRight string
---@field PaddingLeft string
---@field Float string
---@field RenderColor string
---@field VerticalAlign string
---@field DisplayText string
---@field Font string
---@field Lines string
RichTextComponent = {}