---@meta

-- Draws an itemstack 
---@class ItemstackTextComponent: ItemstackComponentBase, ItemstackComponentBase, RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field ShowStacksize boolean
---@field offY number
---@field offX number
ItemstackTextComponent = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param size number
---@param rightSidePadding? number
---@param floatType? EnumFloat
---@param onStackClicked? function
---@return ItemstackTextComponent
function ItemstackTextComponent.ctor(capi, itemstack, size, rightSidePadding, floatType, onStackClicked) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function ItemstackTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param ctx Context
---@param surface ImageSurface
function ItemstackTextComponent.ComposeElements(ctx, surface) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function ItemstackTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackTextComponent.OnMouseDown(args) end

---@param slot ItemSlot The default item slot to item stacks
---@param renderX number
---@param renderY number
---@param dt number
function ItemstackTextComponent.RenderItemstackTooltip(slot, renderX, renderY, dt) end

function ItemstackTextComponent.Dispose() end

---@return string
function ItemstackTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function ItemstackTextComponent.get_BoundsPerLine() end

---@return number
function ItemstackTextComponent.get_UnscaledMarginTop() end

---@param value number
function ItemstackTextComponent.set_UnscaledMarginTop(value) end

---@return number
function ItemstackTextComponent.get_PaddingRight() end

---@param value number
function ItemstackTextComponent.set_PaddingRight(value) end

---@return number
function ItemstackTextComponent.get_PaddingLeft() end

---@param value number
function ItemstackTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function ItemstackTextComponent.get_Float() end

---@param value EnumFloat
function ItemstackTextComponent.set_Float(value) end

---@return Vec4f
function ItemstackTextComponent.get_RenderColor() end

---@param value Vec4f
function ItemstackTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function ItemstackTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function ItemstackTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackTextComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackTextComponent.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function ItemstackTextComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function ItemstackTextComponent.GetType() end

---@return string
function ItemstackTextComponent.ToString() end

---@param obj userdata
---@return boolean
function ItemstackTextComponent.Equals(obj) end

---@return number
function ItemstackTextComponent.GetHashCode() end


