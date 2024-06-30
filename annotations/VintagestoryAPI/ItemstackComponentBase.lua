---@meta

-- Draws an itemstack 
---@class ItemstackComponentBase: RichTextComponentBase, RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field offY number
---@field offX number
ItemstackComponentBase = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return ItemstackComponentBase
function ItemstackComponentBase.ctor(capi) end

---@param slot ItemSlot The default item slot to item stacks
---@param renderX number
---@param renderY number
---@param dt number
function ItemstackComponentBase.RenderItemstackTooltip(slot, renderX, renderY, dt) end

function ItemstackComponentBase.Dispose() end

---@return string
function ItemstackComponentBase.get_MouseOverCursor() end

---@return LineRectangled[]
function ItemstackComponentBase.get_BoundsPerLine() end

---@return number
function ItemstackComponentBase.get_UnscaledMarginTop() end

---@param value number
function ItemstackComponentBase.set_UnscaledMarginTop(value) end

---@return number
function ItemstackComponentBase.get_PaddingRight() end

---@param value number
function ItemstackComponentBase.set_PaddingRight(value) end

---@return number
function ItemstackComponentBase.get_PaddingLeft() end

---@param value number
function ItemstackComponentBase.set_PaddingLeft(value) end

---@return EnumFloat
function ItemstackComponentBase.get_Float() end

---@param value EnumFloat
function ItemstackComponentBase.set_Float(value) end

---@return Vec4f
function ItemstackComponentBase.get_RenderColor() end

---@param value Vec4f
function ItemstackComponentBase.set_RenderColor(value) end

---@return EnumVerticalAlign
function ItemstackComponentBase.get_VerticalAlign() end

---@param value EnumVerticalAlign
function ItemstackComponentBase.set_VerticalAlign(value) end

-- Composes the element.
---@param ctx Context
---@param surface ImageSurface
function ItemstackComponentBase.ComposeElements(ctx, surface) end

-- Renders the text component.
---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function ItemstackComponentBase.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function ItemstackComponentBase.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackComponentBase.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackComponentBase.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ItemstackComponentBase.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function ItemstackComponentBase.UseMouseOverCursor(richtextBounds) end

---@return userdata
function ItemstackComponentBase.GetType() end

---@return string
function ItemstackComponentBase.ToString() end

---@param obj userdata
---@return boolean
function ItemstackComponentBase.Equals(obj) end

---@return number
function ItemstackComponentBase.GetHashCode() end

