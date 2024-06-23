---@meta SlideshowItemstackTextComponent
---@class SlideshowItemstackTextComponent: ItemstackComponentBase
---@field ctor fun(capi: ICoreClientAPI, itemstacks: ItemStack[], unscaledSize: Double, floatType: EnumFloat, onStackClicked: any`1): SlideshowItemstackTextComponent
---@overload fun(capi: ICoreClientAPI, itemstackgroup: ItemStack, allstacks: any[], unscaleSize: Double, floatType: EnumFloat, onStackClicked: any`1): SlideshowItemstackTextComponent
---@field get_ShowStackSize fun(): boolean
---@field set_ShowStackSize fun(value: boolean): nil
---@field get_Background fun(): boolean
---@field set_Background fun(value: boolean): nil
---@field CalcBounds fun(flowPath: TextFlowPath[], currentLineHeight: Double, offsetX: Double, lineY: Double, nextOffsetX: Double&): EnumCalcBoundsResult
---@field ComposeElements fun(ctx: Context, surface: ImageSurface): nil
---@field RenderInteractiveElements fun(deltaTime: Single, renderX: Double, renderY: Double, renderZ: Double): nil
---@field OnMouseDown fun(args: MouseEvent): nil
---@field RenderItemstackTooltip fun(slot: ItemSlot, renderX: Double, renderY: Double, dt: Single): nil
---@field Dispose fun(): nil
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
---@field OnMouseUp fun(args: MouseEvent): nil
---@field UseMouseOverCursor fun(richtextBounds: ElementBounds): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field ShowStackSize boolean
---@field Background boolean
---@field MouseOverCursor boolean
---@field BoundsPerLine boolean
---@field UnscaledMarginTop boolean
---@field PaddingRight boolean
---@field PaddingLeft boolean
---@field Float boolean
---@field RenderColor boolean
---@field VerticalAlign boolean
---@field ShowTooltip boolean
---@field Itemstacks boolean
---@field ExtraTooltipText boolean
---@field renderOffset boolean
---@field renderSize boolean
---@field overrideCurrentItemStack boolean
---@field offY boolean
---@field offX boolean
SlideshowItemstackTextComponent = {}
