---@meta

-- Draws multiple itemstacks
---@class SlideshowItemstackTextComponent: ItemstackComponentBase, ItemstackComponentBase, RichTextComponentBase
---@field ShowStackSize boolean
---@field Background boolean
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field ShowTooltip boolean
---@field Itemstacks ItemStack[]
---@field ExtraTooltipText string
---@field renderOffset Vec3f
---@field renderSize number
---@field overrideCurrentItemStack StackDisplayDelegate
---@field offY number
---@field offX number
SlideshowItemstackTextComponent = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstacks ItemStack[]
---@param unscaledSize number
---@param floatType EnumFloat
---@param onStackClicked? function
---@return SlideshowItemstackTextComponent
function SlideshowItemstackTextComponent.ctor(capi, itemstacks, unscaledSize, floatType, onStackClicked) end
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstackgroup ItemStack
---@param allstacks table
---@param unscaleSize number
---@param floatType EnumFloat
---@param onStackClicked? function
---@return SlideshowItemstackTextComponent
function SlideshowItemstackTextComponent.ctor(capi, itemstackgroup, allstacks, unscaleSize, floatType, onStackClicked) end

---@return boolean
function SlideshowItemstackTextComponent.get_ShowStackSize() end

---@param value boolean
function SlideshowItemstackTextComponent.set_ShowStackSize(value) end

---@return boolean
function SlideshowItemstackTextComponent.get_Background() end

---@param value boolean
function SlideshowItemstackTextComponent.set_Background(value) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function SlideshowItemstackTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param ctx Context
---@param surface ImageSurface
function SlideshowItemstackTextComponent.ComposeElements(ctx, surface) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function SlideshowItemstackTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowItemstackTextComponent.OnMouseDown(args) end

---@param slot ItemSlot The default item slot to item stacks
---@param renderX number
---@param renderY number
---@param dt number
function SlideshowItemstackTextComponent.RenderItemstackTooltip(slot, renderX, renderY, dt) end

function SlideshowItemstackTextComponent.Dispose() end

---@return string
function SlideshowItemstackTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function SlideshowItemstackTextComponent.get_BoundsPerLine() end

---@return number
function SlideshowItemstackTextComponent.get_UnscaledMarginTop() end

---@param value number
function SlideshowItemstackTextComponent.set_UnscaledMarginTop(value) end

---@return number
function SlideshowItemstackTextComponent.get_PaddingRight() end

---@param value number
function SlideshowItemstackTextComponent.set_PaddingRight(value) end

---@return number
function SlideshowItemstackTextComponent.get_PaddingLeft() end

---@param value number
function SlideshowItemstackTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function SlideshowItemstackTextComponent.get_Float() end

---@param value EnumFloat
function SlideshowItemstackTextComponent.set_Float(value) end

---@return Vec4f
function SlideshowItemstackTextComponent.get_RenderColor() end

---@param value Vec4f
function SlideshowItemstackTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function SlideshowItemstackTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function SlideshowItemstackTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowItemstackTextComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowItemstackTextComponent.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function SlideshowItemstackTextComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function SlideshowItemstackTextComponent.GetType() end

---@return string
function SlideshowItemstackTextComponent.ToString() end

---@param obj userdata
---@return boolean
function SlideshowItemstackTextComponent.Equals(obj) end

---@return number
function SlideshowItemstackTextComponent.GetHashCode() end


