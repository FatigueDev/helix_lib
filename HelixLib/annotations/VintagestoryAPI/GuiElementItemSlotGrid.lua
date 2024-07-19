---@meta

-- Displays the slots of an inventory in the form of a slot grid
---@class GuiElementItemSlotGrid: GuiElementItemSlotGridBase, IDisposable, GuiElement, GuiElementItemSlotGridBase
---@field AlwaysRenderIcon boolean
---@field Focusable boolean
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field CanClickSlot CanClickSlotDelegate
---@field DrawIconHandler DrawIconDelegate
---@field KeyboardControlEnabled boolean
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementItemSlotGrid = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param inventory IInventory Basic interface representing an item inventory
---@param SendPacketHandler function
---@param cols number
---@param visibleSlots number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementItemSlotGrid
function GuiElementItemSlotGrid.ctor(capi, inventory, SendPacketHandler, cols, visibleSlots, bounds) end

-- Determines the available slots for the slot grid.
---@param visibleSlots? number
function GuiElementItemSlotGrid.DetermineAvailableSlots(visibleSlots) end

---@return boolean
function GuiElementItemSlotGrid.get_AlwaysRenderIcon() end

---@param value boolean
function GuiElementItemSlotGrid.set_AlwaysRenderIcon(value) end

---@return boolean
function GuiElementItemSlotGrid.get_Focusable() end

---@param unusedCtx Context
---@param unusedSurface ImageSurface
function GuiElementItemSlotGrid.ComposeElements(unusedCtx, unusedSurface) end

---@param deltaTime number
function GuiElementItemSlotGrid.PostRenderInteractiveElements(deltaTime) end

---@param deltaTime number
function GuiElementItemSlotGrid.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function GuiElementItemSlotGrid.OnGuiClosed(api) end

---@return number
function GuiElementItemSlotGrid.OutlineColor() end

-- Renders only a subset of all available slots filtered by searching given text on the item name/description
---@param text string
---@param searchCache? table
---@param searchCacheNames? table
function GuiElementItemSlotGrid.FilterItemsBySearchText(text, searchCache, searchCacheNames) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementItemSlotGrid.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGrid.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGrid.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGrid.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGrid.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGrid.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGrid.OnMouseLeaveSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slotId number
---@param mouseButton EnumMouseButton
---@param shiftPressed boolean
---@param ctrlPressed boolean
---@param altPressed boolean
function GuiElementItemSlotGrid.SlotClick(api, slotId, mouseButton, shiftPressed, ctrlPressed, altPressed) end

-- Highlights a specific slot.
---@param slotId number
function GuiElementItemSlotGrid.HighlightSlot(slotId) end

-- Removes the active slot highlight.
function GuiElementItemSlotGrid.RemoveSlotHighlight() end

function GuiElementItemSlotGrid.Dispose() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGrid.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGrid.set_InsideClipBounds(value) end

---@return boolean
function GuiElementItemSlotGrid.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementItemSlotGrid.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementItemSlotGrid.get_HasFocus() end

---@return number
function GuiElementItemSlotGrid.get_DrawOrder() end

---@return number
function GuiElementItemSlotGrid.get_Scale() end

---@param value number
function GuiElementItemSlotGrid.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementItemSlotGrid.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementItemSlotGrid.OnFocusLost() end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementItemSlotGrid.RenderFocusOverlay(deltaTime) end

function GuiElementItemSlotGrid.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGrid.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementItemSlotGrid.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementItemSlotGrid.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementItemSlotGrid.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGrid.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGrid.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementItemSlotGrid.RenderBoundsDebug() end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGrid.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGrid.OnMouseEnterSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGrid.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGrid.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementItemSlotGrid.IsPositionInside(posX, posY) end

---@return string
function GuiElementItemSlotGrid.get_MouseOverCursor() end

---@return userdata
function GuiElementItemSlotGrid.GetType() end

---@return string
function GuiElementItemSlotGrid.ToString() end

---@param obj userdata
---@return boolean
function GuiElementItemSlotGrid.Equals(obj) end

---@return number
function GuiElementItemSlotGrid.GetHashCode() end


