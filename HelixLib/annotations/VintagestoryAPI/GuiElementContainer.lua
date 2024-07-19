---@meta

---@class GuiElementContainer: GuiElement, IDisposable, GuiElement
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field Elements table The cells in the list.  See IGuiElementCell for how it's supposed to function.
---@field unscaledCellSpacing number the space between the cells.  Default: 10
---@field UnscaledCellVerPadding number The padding on the vertical axis of the cell.  Default: 2
---@field UnscaledCellHorPadding number The padding on the horizontal axis of the cell.  Default: 7
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementContainer = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementContainer
function GuiElementContainer.ctor(capi, bounds) end

function GuiElementContainer.BeforeCalcBounds() end

-- Calculates the total height for the list.
function GuiElementContainer.CalcTotalHeight() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementContainer.ComposeElements(ctx, surface) end

-- Adds a cell to the list.
---@param elem GuiElement
---@param afterPosition? number
function GuiElementContainer.Add(elem, afterPosition) end

-- Removes a cell at a specified position.
---@param position number
function GuiElementContainer.RemoveCell(position) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementContainer.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementContainer.OnMouseDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementContainer.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementContainer.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementContainer.OnKeyPress(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementContainer.OnMouseWheel(api, args) end

---@param deltaTime number
function GuiElementContainer.RenderInteractiveElements(deltaTime) end

function GuiElementContainer.Dispose() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementContainer.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementContainer.set_InsideClipBounds(value) end

---@return boolean
function GuiElementContainer.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementContainer.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementContainer.get_HasFocus() end

---@return number
function GuiElementContainer.get_DrawOrder() end

---@return boolean
function GuiElementContainer.get_Focusable() end

---@return number
function GuiElementContainer.get_Scale() end

---@param value number
function GuiElementContainer.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementContainer.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementContainer.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementContainer.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementContainer.RenderFocusOverlay(deltaTime) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementContainer.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementContainer.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementContainer.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementContainer.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementContainer.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementContainer.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementContainer.RenderBoundsDebug() end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementContainer.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementContainer.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementContainer.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementContainer.OnMouseLeaveSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementContainer.OnKeyUp(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementContainer.IsPositionInside(posX, posY) end

---@return string
function GuiElementContainer.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementContainer.OutlineColor() end

---@return userdata
function GuiElementContainer.GetType() end

---@return string
function GuiElementContainer.ToString() end

---@param obj userdata
---@return boolean
function GuiElementContainer.Equals(obj) end

---@return number
function GuiElementContainer.GetHashCode() end


