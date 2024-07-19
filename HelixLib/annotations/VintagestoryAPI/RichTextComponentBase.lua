---@meta

---@class RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
RichTextComponentBase = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return RichTextComponentBase
function RichTextComponentBase.ctor(api) end

---@return string
function RichTextComponentBase.get_MouseOverCursor() end

---@return LineRectangled[]
function RichTextComponentBase.get_BoundsPerLine() end

---@return number
function RichTextComponentBase.get_UnscaledMarginTop() end

---@param value number
function RichTextComponentBase.set_UnscaledMarginTop(value) end

---@return number
function RichTextComponentBase.get_PaddingRight() end

---@param value number
function RichTextComponentBase.set_PaddingRight(value) end

---@return number
function RichTextComponentBase.get_PaddingLeft() end

---@param value number
function RichTextComponentBase.set_PaddingLeft(value) end

---@return EnumFloat
function RichTextComponentBase.get_Float() end

---@param value EnumFloat
function RichTextComponentBase.set_Float(value) end

---@return Vec4f
function RichTextComponentBase.get_RenderColor() end

---@param value Vec4f
function RichTextComponentBase.set_RenderColor(value) end

---@return EnumVerticalAlign
function RichTextComponentBase.get_VerticalAlign() end

---@param value EnumVerticalAlign
function RichTextComponentBase.set_VerticalAlign(value) end

-- Composes the element.
---@param ctx Context
---@param surface ImageSurface
function RichTextComponentBase.ComposeElements(ctx, surface) end

-- Renders the text component.
---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function RichTextComponentBase.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function RichTextComponentBase.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponentBase.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponentBase.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponentBase.OnMouseUp(args) end

function RichTextComponentBase.Dispose() end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function RichTextComponentBase.UseMouseOverCursor(richtextBounds) end

---@return userdata
function RichTextComponentBase.GetType() end

---@return string
function RichTextComponentBase.ToString() end

---@param obj userdata
---@return boolean
function RichTextComponentBase.Equals(obj) end

---@return number
function RichTextComponentBase.GetHashCode() end


