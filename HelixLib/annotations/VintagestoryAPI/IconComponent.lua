---@meta

-- Draws an icon 
---@class IconComponent: RichTextComponentBase, RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field offY number
---@field sizeMulSvg number
IconComponent = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param iconName string
---@param iconPath string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@return IconComponent
function IconComponent.ctor(capi, iconName, iconPath, font) end

---@param ctx Context
---@param surface ImageSurface
function IconComponent.ComposeElements(ctx, surface) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function IconComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function IconComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

function IconComponent.Dispose() end

---@return string
function IconComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function IconComponent.get_BoundsPerLine() end

---@return number
function IconComponent.get_UnscaledMarginTop() end

---@param value number
function IconComponent.set_UnscaledMarginTop(value) end

---@return number
function IconComponent.get_PaddingRight() end

---@param value number
function IconComponent.set_PaddingRight(value) end

---@return number
function IconComponent.get_PaddingLeft() end

---@param value number
function IconComponent.set_PaddingLeft(value) end

---@return EnumFloat
function IconComponent.get_Float() end

---@param value EnumFloat
function IconComponent.set_Float(value) end

---@return Vec4f
function IconComponent.get_RenderColor() end

---@param value Vec4f
function IconComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function IconComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function IconComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function IconComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function IconComponent.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function IconComponent.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function IconComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function IconComponent.GetType() end

---@return string
function IconComponent.ToString() end

---@param obj userdata
---@return boolean
function IconComponent.Equals(obj) end

---@return number
function IconComponent.GetHashCode() end


