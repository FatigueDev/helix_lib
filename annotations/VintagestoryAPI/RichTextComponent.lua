---@meta

---@class RichTextComponent: RichTextComponentBase, RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field DisplayText string
---@field Font CairoFont
---@field Lines TextLine[]
RichTextComponent = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param displayText string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@return RichTextComponent
function RichTextComponent.ctor(api, displayText, font) end

-- Composes the element.
---@param ctx Context
---@param surface ImageSurface
function RichTextComponent.ComposeElements(ctx, surface) end

-- Renders the text component.
---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function RichTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function RichTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@return string
function RichTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function RichTextComponent.get_BoundsPerLine() end

---@return number
function RichTextComponent.get_UnscaledMarginTop() end

---@param value number
function RichTextComponent.set_UnscaledMarginTop(value) end

---@return number
function RichTextComponent.get_PaddingRight() end

---@param value number
function RichTextComponent.set_PaddingRight(value) end

---@return number
function RichTextComponent.get_PaddingLeft() end

---@param value number
function RichTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function RichTextComponent.get_Float() end

---@param value EnumFloat
function RichTextComponent.set_Float(value) end

---@return Vec4f
function RichTextComponent.get_RenderColor() end

---@param value Vec4f
function RichTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function RichTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function RichTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponent.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function RichTextComponent.OnMouseUp(args) end

function RichTextComponent.Dispose() end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function RichTextComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function RichTextComponent.GetType() end

---@return string
function RichTextComponent.ToString() end

---@param obj userdata
---@return boolean
function RichTextComponent.Equals(obj) end

---@return number
function RichTextComponent.GetHashCode() end


