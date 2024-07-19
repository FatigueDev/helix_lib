---@meta

-- Creates a toggle button for the GUI.
---@class GuiElementColorListPicker: GuiElementElementListPickerBase`1, IDisposable, GuiElement, GuiElementControl
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
GuiElementColorListPicker = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param elem number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementColorListPicker
function GuiElementColorListPicker.ctor(capi, elem, bounds) end

---@param color number
---@param ctx Context
---@param surface ImageSurface
function GuiElementColorListPicker.DrawElement(color, ctx, surface) end

---@param value string
function GuiElementColorListPicker.set_TooltipText(value) end

---@return boolean
function GuiElementColorListPicker.get_Focusable() end

-- Composes the element in both the pressed, and released states.
---@param ctx Context
---@param surface ImageSurface
function GuiElementColorListPicker.ComposeElements(ctx, surface) end

-- Renders the button.
---@param deltaTime number
function GuiElementColorListPicker.RenderInteractiveElements(deltaTime) end

-- Handles the mouse button press while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementColorListPicker.OnMouseDownOnElement(api, args) end

-- Handles the mouse button release while the mouse is on this button.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementColorListPicker.OnMouseUpOnElement(api, args) end

-- Handles the event fired when the mouse is released.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementColorListPicker.OnMouseUp(api, args) end

-- Sets the value of the button.
---@param on boolean
function GuiElementColorListPicker.SetValue(on) end

-- Disposes of the button.
function GuiElementColorListPicker.Dispose() end

---@return boolean
function GuiElementColorListPicker.get_Enabled() end

---@param value boolean
function GuiElementColorListPicker.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementColorListPicker.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementColorListPicker.set_InsideClipBounds(value) end

---@return boolean
function GuiElementColorListPicker.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementColorListPicker.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementColorListPicker.get_HasFocus() end

---@return number
function GuiElementColorListPicker.get_DrawOrder() end

---@return number
function GuiElementColorListPicker.get_Scale() end

---@param value number
function GuiElementColorListPicker.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementColorListPicker.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementColorListPicker.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementColorListPicker.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementColorListPicker.RenderFocusOverlay(deltaTime) end

function GuiElementColorListPicker.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementColorListPicker.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementColorListPicker.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementColorListPicker.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementColorListPicker.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementColorListPicker.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementColorListPicker.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementColorListPicker.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementColorListPicker.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementColorListPicker.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementColorListPicker.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementColorListPicker.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementColorListPicker.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementColorListPicker.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementColorListPicker.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementColorListPicker.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementColorListPicker.IsPositionInside(posX, posY) end

---@return string
function GuiElementColorListPicker.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementColorListPicker.OutlineColor() end

---@return userdata
function GuiElementColorListPicker.GetType() end

---@return string
function GuiElementColorListPicker.ToString() end

---@param obj userdata
---@return boolean
function GuiElementColorListPicker.Equals(obj) end

---@return number
function GuiElementColorListPicker.GetHashCode() end


