---@meta

-- Creates a toggle button for the GUI.
---@class GuiElementElementListPickerBase`1: GuiElementControl, IDisposable, GuiElement, GuiElementControl
---@field TooltipText string
---@field Focusable boolean Is this element capable of being in the focus?
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field handler function
---@field On boolean Is this button on?
---@field ShowToolTip boolean
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementElementListPickerBase`1 = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param elem T
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementElementListPickerBase`1
function GuiElementElementListPickerBase`1.ctor(capi, elem, bounds) end

---@param value string
function GuiElementElementListPickerBase`1.set_TooltipText(value) end

---@return boolean
function GuiElementElementListPickerBase`1.get_Focusable() end

-- Composes the element in both the pressed, and released states.
---@param ctx Context
---@param surface ImageSurface
function GuiElementElementListPickerBase`1.ComposeElements(ctx, surface) end

---@param elem T
---@param ctx Context
---@param surface ImageSurface
function GuiElementElementListPickerBase`1.DrawElement(elem, ctx, surface) end

-- Renders the button.
---@param deltaTime number
function GuiElementElementListPickerBase`1.RenderInteractiveElements(deltaTime) end

-- Handles the mouse button press while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementElementListPickerBase`1.OnMouseDownOnElement(api, args) end

-- Handles the mouse button release while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementElementListPickerBase`1.OnMouseUpOnElement(api, args) end

-- Handles the event fired when the mouse is released.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementElementListPickerBase`1.OnMouseUp(api, args) end

-- Sets the value of the button.
---@param on boolean
function GuiElementElementListPickerBase`1.SetValue(on) end

-- Disposes of the button.
function GuiElementElementListPickerBase`1.Dispose() end

---@return boolean
function GuiElementElementListPickerBase`1.get_Enabled() end

---@param value boolean
function GuiElementElementListPickerBase`1.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementElementListPickerBase`1.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementElementListPickerBase`1.set_InsideClipBounds(value) end

---@return boolean
function GuiElementElementListPickerBase`1.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementElementListPickerBase`1.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementElementListPickerBase`1.get_HasFocus() end

---@return number
function GuiElementElementListPickerBase`1.get_DrawOrder() end

---@return number
function GuiElementElementListPickerBase`1.get_Scale() end

---@param value number
function GuiElementElementListPickerBase`1.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementElementListPickerBase`1.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementElementListPickerBase`1.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementElementListPickerBase`1.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementElementListPickerBase`1.RenderFocusOverlay(deltaTime) end

function GuiElementElementListPickerBase`1.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementElementListPickerBase`1.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementElementListPickerBase`1.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementElementListPickerBase`1.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementElementListPickerBase`1.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementElementListPickerBase`1.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementElementListPickerBase`1.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementElementListPickerBase`1.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementElementListPickerBase`1.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementElementListPickerBase`1.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementElementListPickerBase`1.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementElementListPickerBase`1.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementElementListPickerBase`1.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementElementListPickerBase`1.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementElementListPickerBase`1.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementElementListPickerBase`1.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementElementListPickerBase`1.IsPositionInside(posX, posY) end

---@return string
function GuiElementElementListPickerBase`1.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementElementListPickerBase`1.OutlineColor() end

---@return userdata
function GuiElementElementListPickerBase`1.GetType() end

---@return string
function GuiElementElementListPickerBase`1.ToString() end

---@param obj userdata
---@return boolean
function GuiElementElementListPickerBase`1.Equals(obj) end

---@return number
function GuiElementElementListPickerBase`1.GetHashCode() end


