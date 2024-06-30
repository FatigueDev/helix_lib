---@meta

-- Builds slot grid with exclusions to the grid.
---@class GuiElementItemSlotGridExcl: GuiElementItemSlotGridBase, IDisposable, GuiElement, GuiElementItemSlotGridBase
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
GuiElementItemSlotGridExcl = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param inventory IInventory Basic interface representing an item inventory
---@param sendPacketHandler function
---@param columns number
---@param excludingSlots number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementItemSlotGridExcl
function GuiElementItemSlotGridExcl.ctor(capi, inventory, sendPacketHandler, columns, excludingSlots, bounds) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementItemSlotGridExcl.ComposeElements(ctx, surface) end

---@param deltaTime number
function GuiElementItemSlotGridExcl.PostRenderInteractiveElements(deltaTime) end

---@return boolean
function GuiElementItemSlotGridExcl.get_AlwaysRenderIcon() end

---@param value boolean
function GuiElementItemSlotGridExcl.set_AlwaysRenderIcon(value) end

---@return boolean
function GuiElementItemSlotGridExcl.get_Focusable() end

---@param deltaTime number
function GuiElementItemSlotGridExcl.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function GuiElementItemSlotGridExcl.OnGuiClosed(api) end

---@return number
function GuiElementItemSlotGridExcl.OutlineColor() end

-- Renders only a subset of all available slots filtered by searching given text on the item name/description
---@param text string
---@param searchCache? table
---@param searchCacheNames? table
function GuiElementItemSlotGridExcl.FilterItemsBySearchText(text, searchCache, searchCacheNames) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementItemSlotGridExcl.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridExcl.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridExcl.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridExcl.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridExcl.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridExcl.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGridExcl.OnMouseLeaveSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slotId number
---@param mouseButton EnumMouseButton
---@param shiftPressed boolean
---@param ctrlPressed boolean
---@param altPressed boolean
function GuiElementItemSlotGridExcl.SlotClick(api, slotId, mouseButton, shiftPressed, ctrlPressed, altPressed) end

-- Highlights a specific slot.
---@param slotId number
function GuiElementItemSlotGridExcl.HighlightSlot(slotId) end

-- Removes the active slot highlight.
function GuiElementItemSlotGridExcl.RemoveSlotHighlight() end

function GuiElementItemSlotGridExcl.Dispose() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridExcl.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridExcl.set_InsideClipBounds(value) end

---@return boolean
function GuiElementItemSlotGridExcl.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementItemSlotGridExcl.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementItemSlotGridExcl.get_HasFocus() end

---@return number
function GuiElementItemSlotGridExcl.get_DrawOrder() end

---@return number
function GuiElementItemSlotGridExcl.get_Scale() end

---@param value number
function GuiElementItemSlotGridExcl.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementItemSlotGridExcl.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementItemSlotGridExcl.OnFocusLost() end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementItemSlotGridExcl.RenderFocusOverlay(deltaTime) end

function GuiElementItemSlotGridExcl.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridExcl.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementItemSlotGridExcl.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementItemSlotGridExcl.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementItemSlotGridExcl.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGridExcl.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGridExcl.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementItemSlotGridExcl.RenderBoundsDebug() end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridExcl.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGridExcl.OnMouseEnterSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridExcl.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridExcl.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementItemSlotGridExcl.IsPositionInside(posX, posY) end

---@return string
function GuiElementItemSlotGridExcl.get_MouseOverCursor() end

---@return userdata
function GuiElementItemSlotGridExcl.GetType() end

---@return string
function GuiElementItemSlotGridExcl.ToString() end

---@param obj userdata
---@return boolean
function GuiElementItemSlotGridExcl.Equals(obj) end

---@return number
function GuiElementItemSlotGridExcl.GetHashCode() end


