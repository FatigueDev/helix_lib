---@meta

---@class GuiElementTextButton: GuiElementControl, IDisposable, GuiElement, GuiElementControl
---@field Focusable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field PlaySound boolean
---@field Visible boolean
---@field Padding number
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementTextButton = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param hoverFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param onClick function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param style? EnumButtonStyle
---@return GuiElementTextButton
function GuiElementTextButton.ctor(capi, text, font, hoverFont, onClick, bounds, style) end

---@return boolean
function GuiElementTextButton.get_Focusable() end

---@return string
function GuiElementTextButton.get_Text() end

---@param value string
function GuiElementTextButton.set_Text(value) end

-- Sets the orientation of the text both when clicked and when idle.
---@param orientation EnumTextOrientation
function GuiElementTextButton.SetOrientation(orientation) end

function GuiElementTextButton.BeforeCalcBounds() end

---@param ctxStatic Context
---@param surfaceStatic ImageSurface
function GuiElementTextButton.ComposeElements(ctxStatic, surfaceStatic) end

---@param deltaTime number
function GuiElementTextButton.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementTextButton.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementTextButton.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementTextButton.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementTextButton.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementTextButton.OnMouseUpOnElement(api, args) end

-- Sets the button as active or inactive.
---@param active boolean
function GuiElementTextButton.SetActive(active) end

function GuiElementTextButton.Dispose() end

---@return boolean
function GuiElementTextButton.get_Enabled() end

---@param value boolean
function GuiElementTextButton.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementTextButton.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementTextButton.set_InsideClipBounds(value) end

---@return boolean
function GuiElementTextButton.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementTextButton.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementTextButton.get_HasFocus() end

---@return number
function GuiElementTextButton.get_DrawOrder() end

---@return number
function GuiElementTextButton.get_Scale() end

---@param value number
function GuiElementTextButton.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementTextButton.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementTextButton.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementTextButton.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementTextButton.RenderFocusOverlay(deltaTime) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementTextButton.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementTextButton.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementTextButton.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementTextButton.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementTextButton.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementTextButton.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementTextButton.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementTextButton.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementTextButton.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementTextButton.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementTextButton.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementTextButton.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementTextButton.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementTextButton.IsPositionInside(posX, posY) end

---@return string
function GuiElementTextButton.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementTextButton.OutlineColor() end

---@return userdata
function GuiElementTextButton.GetType() end

---@return string
function GuiElementTextButton.ToString() end

---@param obj userdata
---@return boolean
function GuiElementTextButton.Equals(obj) end

---@return number
function GuiElementTextButton.GetHashCode() end


