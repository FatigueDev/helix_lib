---@meta

---@class GuiElementScrollbar: GuiElementControl, IDisposable, GuiElement, GuiElementControl
---@field Focusable boolean
---@field ScrollConversionFactor number Moving 1 pixel of the scrollbar moves the content by ScrollConversionFactor of pixels
---@field CurrentYPosition number The current Y position of the inner element
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field mouseDownOnScrollbarHandle boolean
---@field mouseDownStartY number
---@field zOffset number
---@field DefaultScrollbarWidth number
---@field DeafultScrollbarPadding number
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementScrollbar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param onNewScrollbarValue function
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementScrollbar
function GuiElementScrollbar.ctor(capi, onNewScrollbarValue, bounds) end

---@return boolean
function GuiElementScrollbar.get_Focusable() end

---@return number
function GuiElementScrollbar.get_ScrollConversionFactor() end

---@return number
function GuiElementScrollbar.get_CurrentYPosition() end

---@param value number
function GuiElementScrollbar.set_CurrentYPosition(value) end

---@param ctxStatic Context
---@param surface ImageSurface
function GuiElementScrollbar.ComposeElements(ctxStatic, surface) end

function GuiElementScrollbar.RecomposeHandle() end

---@param deltaTime number
function GuiElementScrollbar.RenderInteractiveElements(deltaTime) end

-- Sets the height of the scrollbar.
---@param visibleHeight number
---@param totalHeight number
function GuiElementScrollbar.SetHeights(visibleHeight, totalHeight) end

-- Sets the total height, recalculating things for the new height.
---@param totalHeight number
function GuiElementScrollbar.SetNewTotalHeight(totalHeight) end

---@param pos number
function GuiElementScrollbar.SetScrollbarPosition(pos) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementScrollbar.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementScrollbar.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementScrollbar.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementScrollbar.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementScrollbar.OnKeyDown(api, args) end

-- Triggers the change to the new value of the scrollbar.
function GuiElementScrollbar.TriggerChanged() end

-- Puts the scrollblock to the very bottom of the scrollbar.
function GuiElementScrollbar.ScrollToBottom() end

---@param posX number
---@param posY number
function GuiElementScrollbar.EnsureVisible(posX, posY) end

function GuiElementScrollbar.Dispose() end

---@return boolean
function GuiElementScrollbar.get_Enabled() end

---@param value boolean
function GuiElementScrollbar.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementScrollbar.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementScrollbar.set_InsideClipBounds(value) end

---@return boolean
function GuiElementScrollbar.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementScrollbar.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementScrollbar.get_HasFocus() end

---@return number
function GuiElementScrollbar.get_DrawOrder() end

---@return number
function GuiElementScrollbar.get_Scale() end

---@param value number
function GuiElementScrollbar.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementScrollbar.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementScrollbar.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementScrollbar.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementScrollbar.RenderFocusOverlay(deltaTime) end

function GuiElementScrollbar.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementScrollbar.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementScrollbar.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementScrollbar.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementScrollbar.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementScrollbar.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementScrollbar.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementScrollbar.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementScrollbar.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementScrollbar.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementScrollbar.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementScrollbar.OnMouseLeaveSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementScrollbar.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementScrollbar.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementScrollbar.IsPositionInside(posX, posY) end

---@return string
function GuiElementScrollbar.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementScrollbar.OutlineColor() end

---@return userdata
function GuiElementScrollbar.GetType() end

---@return string
function GuiElementScrollbar.ToString() end

---@param obj userdata
---@return boolean
function GuiElementScrollbar.Equals(obj) end

---@return number
function GuiElementScrollbar.GetHashCode() end


