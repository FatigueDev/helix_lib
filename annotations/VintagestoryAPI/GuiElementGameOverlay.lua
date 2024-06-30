---@meta

---@class GuiElementGameOverlay: GuiElement, IDisposable, GuiElement
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementGameOverlay = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param bgcolor number
---@return GuiElementGameOverlay
function GuiElementGameOverlay.ctor(capi, bounds, bgcolor) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementGameOverlay.ComposeElements(ctx, surface) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementGameOverlay.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementGameOverlay.set_InsideClipBounds(value) end

---@return boolean
function GuiElementGameOverlay.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementGameOverlay.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementGameOverlay.get_HasFocus() end

---@return number
function GuiElementGameOverlay.get_DrawOrder() end

---@return boolean
function GuiElementGameOverlay.get_Focusable() end

---@return number
function GuiElementGameOverlay.get_Scale() end

---@param value number
function GuiElementGameOverlay.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementGameOverlay.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementGameOverlay.OnFocusLost() end

-- Renders the element as an interactive element.
---@param deltaTime number
function GuiElementGameOverlay.RenderInteractiveElements(deltaTime) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementGameOverlay.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementGameOverlay.RenderFocusOverlay(deltaTime) end

function GuiElementGameOverlay.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementGameOverlay.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementGameOverlay.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementGameOverlay.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementGameOverlay.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementGameOverlay.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementGameOverlay.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementGameOverlay.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementGameOverlay.OnMouseDown(api, mouse) end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementGameOverlay.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementGameOverlay.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementGameOverlay.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementGameOverlay.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementGameOverlay.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementGameOverlay.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementGameOverlay.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementGameOverlay.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementGameOverlay.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementGameOverlay.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementGameOverlay.IsPositionInside(posX, posY) end

---@return string
function GuiElementGameOverlay.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementGameOverlay.OutlineColor() end

function GuiElementGameOverlay.Dispose() end

---@return userdata
function GuiElementGameOverlay.GetType() end

---@return string
function GuiElementGameOverlay.ToString() end

---@param obj userdata
---@return boolean
function GuiElementGameOverlay.Equals(obj) end

---@return number
function GuiElementGameOverlay.GetHashCode() end


