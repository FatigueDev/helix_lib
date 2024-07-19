---@meta

-- Creates a toggle button for the GUI.
---@class GuiElementToggleButton: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Focusable boolean Is this element capable of being in the focus?
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field Toggleable boolean Is this button toggleable?
---@field On boolean Is this button on?
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementToggleButton = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param icon string
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param OnToggled function
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param toggleable? boolean
---@return GuiElementToggleButton
function GuiElementToggleButton.ctor(capi, icon, text, font, OnToggled, bounds, toggleable) end

---@return boolean
function GuiElementToggleButton.get_Focusable() end

-- Composes the element in both the pressed, and released states.
---@param ctx Context
---@param surface ImageSurface
function GuiElementToggleButton.ComposeElements(ctx, surface) end

-- Renders the button.
---@param deltaTime number
function GuiElementToggleButton.RenderInteractiveElements(deltaTime) end

-- Handles the mouse button press while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementToggleButton.OnMouseDownOnElement(api, args) end

-- Handles the mouse button release while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementToggleButton.OnMouseUpOnElement(api, args) end

-- Handles the event fired when the mouse is released.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementToggleButton.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementToggleButton.OnKeyDown(api, args) end

-- Sets the value of the button.
---@param on boolean
function GuiElementToggleButton.SetValue(on) end

-- Disposes of the button.
function GuiElementToggleButton.Dispose() end

---@return string
function GuiElementToggleButton.get_Text() end

---@param value string
function GuiElementToggleButton.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementToggleButton.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementToggleButton.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementToggleButton.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementToggleButton.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementToggleButton.GetText() end

---@return boolean
function GuiElementToggleButton.get_Enabled() end

---@param value boolean
function GuiElementToggleButton.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementToggleButton.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementToggleButton.set_InsideClipBounds(value) end

---@return boolean
function GuiElementToggleButton.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementToggleButton.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementToggleButton.get_HasFocus() end

---@return number
function GuiElementToggleButton.get_DrawOrder() end

---@return number
function GuiElementToggleButton.get_Scale() end

---@param value number
function GuiElementToggleButton.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementToggleButton.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementToggleButton.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementToggleButton.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementToggleButton.RenderFocusOverlay(deltaTime) end

function GuiElementToggleButton.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementToggleButton.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementToggleButton.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementToggleButton.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementToggleButton.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementToggleButton.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementToggleButton.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementToggleButton.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementToggleButton.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementToggleButton.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementToggleButton.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementToggleButton.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementToggleButton.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementToggleButton.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementToggleButton.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementToggleButton.IsPositionInside(posX, posY) end

---@return string
function GuiElementToggleButton.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementToggleButton.OutlineColor() end

---@return userdata
function GuiElementToggleButton.GetType() end

---@return string
function GuiElementToggleButton.ToString() end

---@param obj userdata
---@return boolean
function GuiElementToggleButton.Equals(obj) end

---@return number
function GuiElementToggleButton.GetHashCode() end


