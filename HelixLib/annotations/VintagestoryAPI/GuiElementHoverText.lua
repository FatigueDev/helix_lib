---@meta

---@class GuiElementHoverText: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field RenderColor Vec4f
---@field ZPosition number
---@field IsVisible boolean
---@field IsNowShown boolean
---@field DrawOrder number
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field fillBounds boolean
---@field Background TextBackground
---@field DefaultBackground TextBackground
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementHoverText = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param maxWidth number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param background? TextBackground
---@return GuiElementHoverText
function GuiElementHoverText.ctor(capi, text, font, maxWidth, bounds, background) end

---@return Vec4f
function GuiElementHoverText.get_RenderColor() end

---@param value Vec4f
function GuiElementHoverText.set_RenderColor(value) end

---@return number
function GuiElementHoverText.get_ZPosition() end

---@param value number
function GuiElementHoverText.set_ZPosition(value) end

---@return boolean
function GuiElementHoverText.get_IsVisible() end

---@return boolean
function GuiElementHoverText.get_IsNowShown() end

---@return number
function GuiElementHoverText.get_DrawOrder() end

function GuiElementHoverText.BeforeCalcBounds() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementHoverText.ComposeElements(ctx, surface) end

---@return number
function GuiElementHoverText.OutlineColor() end

function GuiElementHoverText.RenderBoundsDebug() end

---@param deltaTime number
function GuiElementHoverText.RenderInteractiveElements(deltaTime) end

-- Sets the text of the component and changes it.
---@param text string
function GuiElementHoverText.SetNewText(text) end

-- Sets whether the text automatically displays or not.
---@param on boolean
function GuiElementHoverText.SetAutoDisplay(on) end

-- Sets the visibility to the 
---@param on boolean
function GuiElementHoverText.SetVisible(on) end

-- Sets whether or not the width of the component should automatiocally adjust.
---@param on boolean
function GuiElementHoverText.SetAutoWidth(on) end

---@param on boolean
function GuiElementHoverText.SetFollowMouse(on) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHoverText.OnMouseDownOnElement(api, args) end

function GuiElementHoverText.Dispose() end

---@return string
function GuiElementHoverText.get_Text() end

---@param value string
function GuiElementHoverText.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementHoverText.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementHoverText.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementHoverText.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementHoverText.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementHoverText.GetText() end

---@return boolean
function GuiElementHoverText.get_Enabled() end

---@param value boolean
function GuiElementHoverText.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHoverText.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHoverText.set_InsideClipBounds(value) end

---@return boolean
function GuiElementHoverText.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementHoverText.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementHoverText.get_HasFocus() end

---@return boolean
function GuiElementHoverText.get_Focusable() end

---@return number
function GuiElementHoverText.get_Scale() end

---@param value number
function GuiElementHoverText.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementHoverText.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementHoverText.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementHoverText.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementHoverText.RenderFocusOverlay(deltaTime) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHoverText.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementHoverText.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementHoverText.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementHoverText.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementHoverText.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementHoverText.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHoverText.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHoverText.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHoverText.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementHoverText.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementHoverText.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHoverText.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementHoverText.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHoverText.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHoverText.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHoverText.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementHoverText.IsPositionInside(posX, posY) end

---@return string
function GuiElementHoverText.get_MouseOverCursor() end

---@return userdata
function GuiElementHoverText.GetType() end

---@return string
function GuiElementHoverText.ToString() end

---@param obj userdata
---@return boolean
function GuiElementHoverText.Equals(obj) end

---@return number
function GuiElementHoverText.GetHashCode() end


