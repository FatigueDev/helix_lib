---@meta

-- Text that can be changed after being composed
---@class GuiElementDynamicText: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field QuantityTextLines number
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field OnClick function
---@field autoHeight boolean
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementDynamicText = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementDynamicText
function GuiElementDynamicText.ctor(capi, text, font, bounds) end

---@return number
function GuiElementDynamicText.get_QuantityTextLines() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementDynamicText.ComposeTextElements(ctx, surface) end

-- Automatically adjusts the height of the dynamic text.
function GuiElementDynamicText.AutoHeight() end

-- Recomposes the element for lines.
---@param async? boolean
function GuiElementDynamicText.RecomposeText(async) end

---@param deltaTime number
function GuiElementDynamicText.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDynamicText.OnMouseDownOnElement(api, args) end

---@param text string
---@param autoHeight? boolean
---@param forceRedraw? boolean
function GuiElementDynamicText.SetNewTextAsync(text, autoHeight, forceRedraw) end

-- Sets the text value of the element.
---@param text string
---@param autoHeight? boolean
---@param forceRedraw? boolean
---@param async? boolean
function GuiElementDynamicText.SetNewText(text, autoHeight, forceRedraw, async) end

function GuiElementDynamicText.Dispose() end

---@return string
function GuiElementDynamicText.get_Text() end

---@param value string
function GuiElementDynamicText.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementDynamicText.ComposeElements(ctx, surface) end

---@return number
function GuiElementDynamicText.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementDynamicText.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementDynamicText.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementDynamicText.GetText() end

---@return boolean
function GuiElementDynamicText.get_Enabled() end

---@param value boolean
function GuiElementDynamicText.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDynamicText.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDynamicText.set_InsideClipBounds(value) end

---@return boolean
function GuiElementDynamicText.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementDynamicText.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementDynamicText.get_HasFocus() end

---@return number
function GuiElementDynamicText.get_DrawOrder() end

---@return boolean
function GuiElementDynamicText.get_Focusable() end

---@return number
function GuiElementDynamicText.get_Scale() end

---@param value number
function GuiElementDynamicText.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementDynamicText.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementDynamicText.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementDynamicText.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementDynamicText.RenderFocusOverlay(deltaTime) end

function GuiElementDynamicText.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDynamicText.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementDynamicText.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementDynamicText.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementDynamicText.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDynamicText.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDynamicText.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementDynamicText.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDynamicText.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDynamicText.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDynamicText.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDynamicText.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDynamicText.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDynamicText.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementDynamicText.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDynamicText.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDynamicText.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDynamicText.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementDynamicText.IsPositionInside(posX, posY) end

---@return string
function GuiElementDynamicText.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementDynamicText.OutlineColor() end

---@return userdata
function GuiElementDynamicText.GetType() end

---@return string
function GuiElementDynamicText.ToString() end

---@param obj userdata
---@return boolean
function GuiElementDynamicText.Equals(obj) end

---@return number
function GuiElementDynamicText.GetHashCode() end


