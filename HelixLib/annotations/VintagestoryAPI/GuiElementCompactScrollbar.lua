---@meta

---@class GuiElementCompactScrollbar: GuiElementScrollbar, IDisposable, GuiElement, GuiElementControl, GuiElementScrollbar
---@field Focusable boolean Can this GUIElement be focusable? (default: true).
---@field ScrollConversionFactor number Moving 1 pixel of the scrollbar moves the content by ScrollConversionFactor of pixels
---@field CurrentYPosition number The current Y position of the inner element
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field scrollbarPadding number The padding around the scrollbar.
---@field mouseDownOnScrollbarHandle boolean
---@field mouseDownStartY number
---@field zOffset number
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementCompactScrollbar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param onNewScrollbarValue function
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementCompactScrollbar
function GuiElementCompactScrollbar.ctor(capi, onNewScrollbarValue, bounds) end

---@return boolean
function GuiElementCompactScrollbar.get_Focusable() end

-- Composes the element.
---@param ctxStatic Context
---@param surface ImageSurface
function GuiElementCompactScrollbar.ComposeElements(ctxStatic, surface) end

function GuiElementCompactScrollbar.RecomposeHandle() end

-- Renders the element.
---@param deltaTime number
function GuiElementCompactScrollbar.RenderInteractiveElements(deltaTime) end

---@return number
function GuiElementCompactScrollbar.get_ScrollConversionFactor() end

---@return number
function GuiElementCompactScrollbar.get_CurrentYPosition() end

---@param value number
function GuiElementCompactScrollbar.set_CurrentYPosition(value) end

-- Sets the height of the scrollbar.
---@param visibleHeight number
---@param totalHeight number
function GuiElementCompactScrollbar.SetHeights(visibleHeight, totalHeight) end

-- Sets the total height, recalculating things for the new height.
---@param totalHeight number
function GuiElementCompactScrollbar.SetNewTotalHeight(totalHeight) end

---@param pos number
function GuiElementCompactScrollbar.SetScrollbarPosition(pos) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementCompactScrollbar.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCompactScrollbar.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCompactScrollbar.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCompactScrollbar.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCompactScrollbar.OnKeyDown(api, args) end

-- Triggers the change to the new value of the scrollbar.
function GuiElementCompactScrollbar.TriggerChanged() end

-- Puts the scrollblock to the very bottom of the scrollbar.
function GuiElementCompactScrollbar.ScrollToBottom() end

---@param posX number
---@param posY number
function GuiElementCompactScrollbar.EnsureVisible(posX, posY) end

function GuiElementCompactScrollbar.Dispose() end

---@return boolean
function GuiElementCompactScrollbar.get_Enabled() end

---@param value boolean
function GuiElementCompactScrollbar.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCompactScrollbar.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCompactScrollbar.set_InsideClipBounds(value) end

---@return boolean
function GuiElementCompactScrollbar.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementCompactScrollbar.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementCompactScrollbar.get_HasFocus() end

---@return number
function GuiElementCompactScrollbar.get_DrawOrder() end

---@return number
function GuiElementCompactScrollbar.get_Scale() end

---@param value number
function GuiElementCompactScrollbar.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementCompactScrollbar.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementCompactScrollbar.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementCompactScrollbar.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementCompactScrollbar.RenderFocusOverlay(deltaTime) end

function GuiElementCompactScrollbar.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCompactScrollbar.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementCompactScrollbar.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementCompactScrollbar.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementCompactScrollbar.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementCompactScrollbar.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementCompactScrollbar.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementCompactScrollbar.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCompactScrollbar.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCompactScrollbar.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementCompactScrollbar.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementCompactScrollbar.OnMouseLeaveSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCompactScrollbar.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCompactScrollbar.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementCompactScrollbar.IsPositionInside(posX, posY) end

---@return string
function GuiElementCompactScrollbar.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementCompactScrollbar.OutlineColor() end

---@return userdata
function GuiElementCompactScrollbar.GetType() end

---@return string
function GuiElementCompactScrollbar.ToString() end

---@param obj userdata
---@return boolean
function GuiElementCompactScrollbar.Equals(obj) end

---@return number
function GuiElementCompactScrollbar.GetHashCode() end


