---@meta

---@class GuiElementCellList`1: GuiElement, IDisposable, GuiElement
---@field InsideClipBounds ElementBounds
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field elementCells table The cells in the list.  See IGuiElementCell for how it's supposed to function.
---@field unscaledCellSpacing number the space between the cells.  Default: 10
---@field UnscaledCellVerPadding number The padding on the vertical axis of the cell.  Default: 2
---@field UnscaledCellHorPadding number The padding on the horizontal axis of the cell.  Default: 7
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementCellList`1 = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param cellCreator OnRequireCell`1
---@param cells? table
---@return GuiElementCellList`1
function GuiElementCellList`1.ctor(capi, bounds, cellCreator, cells) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCellList`1.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCellList`1.set_InsideClipBounds(value) end

---@param cells table
function GuiElementCellList`1.ReloadCells(cells) end

function GuiElementCellList`1.BeforeCalcBounds() end

-- Calculates the total height for the list.
function GuiElementCellList`1.CalcTotalHeight() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementCellList`1.ComposeElements(ctx, surface) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCellList`1.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCellList`1.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCellList`1.OnMouseMove(api, args) end

---@param deltaTime number
function GuiElementCellList`1.RenderInteractiveElements(deltaTime) end

function GuiElementCellList`1.Dispose() end

---@return boolean
function GuiElementCellList`1.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementCellList`1.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementCellList`1.get_HasFocus() end

---@return number
function GuiElementCellList`1.get_DrawOrder() end

---@return boolean
function GuiElementCellList`1.get_Focusable() end

---@return number
function GuiElementCellList`1.get_Scale() end

---@param value number
function GuiElementCellList`1.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementCellList`1.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementCellList`1.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementCellList`1.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementCellList`1.RenderFocusOverlay(deltaTime) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementCellList`1.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementCellList`1.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementCellList`1.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementCellList`1.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementCellList`1.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementCellList`1.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementCellList`1.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCellList`1.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementCellList`1.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementCellList`1.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementCellList`1.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementCellList`1.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCellList`1.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCellList`1.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementCellList`1.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementCellList`1.IsPositionInside(posX, posY) end

---@return string
function GuiElementCellList`1.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementCellList`1.OutlineColor() end

---@return userdata
function GuiElementCellList`1.GetType() end

---@return string
function GuiElementCellList`1.ToString() end

---@param obj userdata
---@return boolean
function GuiElementCellList`1.Equals(obj) end

---@return number
function GuiElementCellList`1.GetHashCode() end


