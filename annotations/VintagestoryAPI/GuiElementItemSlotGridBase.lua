---@meta

-- A base class for the slot grid.  For all your slot grid needs.
---@class GuiElementItemSlotGridBase: GuiElement, IDisposable, GuiElement
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
---@field unscaledSlotPadding number
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementItemSlotGridBase = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param inventory IInventory Basic interface representing an item inventory
---@param sendPacket function
---@param columns number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementItemSlotGridBase
function GuiElementItemSlotGridBase.ctor(capi, inventory, sendPacket, columns, bounds) end

---@return boolean
function GuiElementItemSlotGridBase.get_AlwaysRenderIcon() end

---@param value boolean
function GuiElementItemSlotGridBase.set_AlwaysRenderIcon(value) end

---@return boolean
function GuiElementItemSlotGridBase.get_Focusable() end

---@param unusedCtx Context
---@param unusedSurface ImageSurface
function GuiElementItemSlotGridBase.ComposeElements(unusedCtx, unusedSurface) end

---@param deltaTime number
function GuiElementItemSlotGridBase.PostRenderInteractiveElements(deltaTime) end

---@param deltaTime number
function GuiElementItemSlotGridBase.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function GuiElementItemSlotGridBase.OnGuiClosed(api) end

---@return number
function GuiElementItemSlotGridBase.OutlineColor() end

-- Renders only a subset of all available slots filtered by searching given text on the item name/description
---@param text string
---@param searchCache? table
---@param searchCacheNames? table
function GuiElementItemSlotGridBase.FilterItemsBySearchText(text, searchCache, searchCacheNames) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementItemSlotGridBase.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridBase.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridBase.OnMouseDown(api, mouse) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridBase.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridBase.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridBase.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGridBase.OnMouseLeaveSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slotId number
---@param mouseButton EnumMouseButton
---@param shiftPressed boolean
---@param ctrlPressed boolean
---@param altPressed boolean
function GuiElementItemSlotGridBase.SlotClick(api, slotId, mouseButton, shiftPressed, ctrlPressed, altPressed) end

-- Highlights a specific slot.
---@param slotId number
function GuiElementItemSlotGridBase.HighlightSlot(slotId) end

-- Removes the active slot highlight.
function GuiElementItemSlotGridBase.RemoveSlotHighlight() end

function GuiElementItemSlotGridBase.Dispose() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridBase.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridBase.set_InsideClipBounds(value) end

---@return boolean
function GuiElementItemSlotGridBase.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementItemSlotGridBase.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementItemSlotGridBase.get_HasFocus() end

---@return number
function GuiElementItemSlotGridBase.get_DrawOrder() end

---@return number
function GuiElementItemSlotGridBase.get_Scale() end

---@param value number
function GuiElementItemSlotGridBase.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementItemSlotGridBase.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementItemSlotGridBase.OnFocusLost() end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementItemSlotGridBase.RenderFocusOverlay(deltaTime) end

function GuiElementItemSlotGridBase.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementItemSlotGridBase.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementItemSlotGridBase.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementItemSlotGridBase.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementItemSlotGridBase.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGridBase.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementItemSlotGridBase.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementItemSlotGridBase.RenderBoundsDebug() end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementItemSlotGridBase.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementItemSlotGridBase.OnMouseEnterSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridBase.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementItemSlotGridBase.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementItemSlotGridBase.IsPositionInside(posX, posY) end

---@return string
function GuiElementItemSlotGridBase.get_MouseOverCursor() end

---@return userdata
function GuiElementItemSlotGridBase.GetType() end

---@return string
function GuiElementItemSlotGridBase.ToString() end

---@param obj userdata
---@return boolean
function GuiElementItemSlotGridBase.Equals(obj) end

---@return number
function GuiElementItemSlotGridBase.GetHashCode() end


