---@meta

---@class ClearFloatTextComponent: RichTextComponent, RichTextComponent, RichTextComponentBase
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
ClearFloatTextComponent = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param unScaleMarginTop? number
---@return ClearFloatTextComponent
function ClearFloatTextComponent.ctor(api, unScaleMarginTop) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function ClearFloatTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param ctx Context
---@param surface ImageSurface
function ClearFloatTextComponent.ComposeElements(ctx, surface) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function ClearFloatTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@return string
function ClearFloatTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function ClearFloatTextComponent.get_BoundsPerLine() end

---@return number
function ClearFloatTextComponent.get_UnscaledMarginTop() end

---@param value number
function ClearFloatTextComponent.set_UnscaledMarginTop(value) end

---@return number
function ClearFloatTextComponent.get_PaddingRight() end

---@param value number
function ClearFloatTextComponent.set_PaddingRight(value) end

---@return number
function ClearFloatTextComponent.get_PaddingLeft() end

---@param value number
function ClearFloatTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function ClearFloatTextComponent.get_Float() end

---@param value EnumFloat
function ClearFloatTextComponent.set_Float(value) end

---@return Vec4f
function ClearFloatTextComponent.get_RenderColor() end

---@param value Vec4f
function ClearFloatTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function ClearFloatTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function ClearFloatTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClearFloatTextComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClearFloatTextComponent.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClearFloatTextComponent.OnMouseUp(args) end

function ClearFloatTextComponent.Dispose() end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function ClearFloatTextComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function ClearFloatTextComponent.GetType() end

---@return string
function ClearFloatTextComponent.ToString() end

---@param obj userdata
---@return boolean
function ClearFloatTextComponent.Equals(obj) end

---@return number
function ClearFloatTextComponent.GetHashCode() end


