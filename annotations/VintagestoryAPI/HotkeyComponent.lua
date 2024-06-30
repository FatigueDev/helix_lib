---@meta

---@class HotkeyComponent: RichTextComponent, RichTextComponent, RichTextComponentBase
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
HotkeyComponent = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param hotkeycode string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@return HotkeyComponent
function HotkeyComponent.ctor(api, hotkeycode, font) end

---@param ctx Context
---@param surfaceUnused ImageSurface
function HotkeyComponent.ComposeElements(ctx, surfaceUnused) end

function HotkeyComponent.GenHotkeyTexture() end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function HotkeyComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function HotkeyComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

function HotkeyComponent.Dispose() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param keycode string
---@param x number
---@param y number
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param lineheight number
---@param textHeight number
---@param pluswdith number
---@param symbolspacing number
---@param leftRightPadding number
---@param color number
---@return number
function HotkeyComponent.DrawHotkey(capi, keycode, x, y, ctx, font, lineheight, textHeight, pluswdith, symbolspacing, leftRightPadding, color) end

---@return string
function HotkeyComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function HotkeyComponent.get_BoundsPerLine() end

---@return number
function HotkeyComponent.get_UnscaledMarginTop() end

---@param value number
function HotkeyComponent.set_UnscaledMarginTop(value) end

---@return number
function HotkeyComponent.get_PaddingRight() end

---@param value number
function HotkeyComponent.set_PaddingRight(value) end

---@return number
function HotkeyComponent.get_PaddingLeft() end

---@param value number
function HotkeyComponent.set_PaddingLeft(value) end

---@return EnumFloat
function HotkeyComponent.get_Float() end

---@param value EnumFloat
function HotkeyComponent.set_Float(value) end

---@return Vec4f
function HotkeyComponent.get_RenderColor() end

---@param value Vec4f
function HotkeyComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function HotkeyComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function HotkeyComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HotkeyComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HotkeyComponent.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HotkeyComponent.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function HotkeyComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function HotkeyComponent.GetType() end

---@return string
function HotkeyComponent.ToString() end

---@param obj userdata
---@return boolean
function HotkeyComponent.Equals(obj) end

---@return number
function HotkeyComponent.GetHashCode() end


