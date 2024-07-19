---@meta

---@class LinkTextComponent: RichTextComponent, RichTextComponent, RichTextComponentBase
---@field Clickable boolean
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field Href string
---@field DisplayText string
---@field Font CairoFont
---@field Lines TextLine[]
LinkTextComponent = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param displayText string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param onLinkClicked function
---@return LinkTextComponent
function LinkTextComponent.ctor(api, displayText, font, onLinkClicked) end

---@return boolean
function LinkTextComponent.get_Clickable() end

---@param value boolean
function LinkTextComponent.set_Clickable(value) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function LinkTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param ctxStatic Context
---@param surfaceStatic ImageSurface
function LinkTextComponent.ComposeElements(ctxStatic, surfaceStatic) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function LinkTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function LinkTextComponent.UseMouseOverCursor(richtextBounds) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function LinkTextComponent.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function LinkTextComponent.OnMouseUp(args) end

---@param href string
---@return LinkTextComponent
function LinkTextComponent.SetHref(href) end

function LinkTextComponent.Trigger() end

function LinkTextComponent.HandleLink() end

function LinkTextComponent.Dispose() end

---@return string
function LinkTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function LinkTextComponent.get_BoundsPerLine() end

---@return number
function LinkTextComponent.get_UnscaledMarginTop() end

---@param value number
function LinkTextComponent.set_UnscaledMarginTop(value) end

---@return number
function LinkTextComponent.get_PaddingRight() end

---@param value number
function LinkTextComponent.set_PaddingRight(value) end

---@return number
function LinkTextComponent.get_PaddingLeft() end

---@param value number
function LinkTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function LinkTextComponent.get_Float() end

---@param value EnumFloat
function LinkTextComponent.set_Float(value) end

---@return Vec4f
function LinkTextComponent.get_RenderColor() end

---@param value Vec4f
function LinkTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function LinkTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function LinkTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function LinkTextComponent.OnMouseMove(args) end

---@return userdata
function LinkTextComponent.GetType() end

---@return string
function LinkTextComponent.ToString() end

---@param obj userdata
---@return boolean
function LinkTextComponent.Equals(obj) end

---@return number
function LinkTextComponent.GetHashCode() end


