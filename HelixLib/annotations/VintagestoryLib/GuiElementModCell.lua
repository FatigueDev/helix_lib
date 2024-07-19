---@meta

---@class GuiElementModCell: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, IGuiElementCell, GuiElementTextBase
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field cell ModCellEntry
---@field On boolean
---@field OnMouseDownOnCellLeft function
---@field OnMouseDownOnCellRight function
---@field unscaledRightBoxWidth number
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementModCell = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param cell ModCellEntry
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param warningIcon IAsset Represents a loaded asset from the assets folder
---@return GuiElementModCell
function GuiElementModCell.ctor(capi, cell, bounds, warningIcon) end

function GuiElementModCell.UpdateCellHeight() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param deltaTime number
function GuiElementModCell.OnRenderInteractiveElements(api, deltaTime) end

function GuiElementModCell.Dispose() end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function GuiElementModCell.OnMouseUpOnElement(args, elementIndex) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function GuiElementModCell.OnMouseMoveOnElement(args, elementIndex) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function GuiElementModCell.OnMouseDownOnElement(args, elementIndex) end

---@return string
function GuiElementModCell.get_Text() end

---@param value string
function GuiElementModCell.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementModCell.ComposeElements(ctx, surface) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementModCell.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementModCell.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementModCell.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementModCell.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementModCell.GetText() end

---@return boolean
function GuiElementModCell.get_Enabled() end

---@param value boolean
function GuiElementModCell.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementModCell.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementModCell.set_InsideClipBounds(value) end

---@return boolean
function GuiElementModCell.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementModCell.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementModCell.get_HasFocus() end

---@return number
function GuiElementModCell.get_DrawOrder() end

---@return boolean
function GuiElementModCell.get_Focusable() end

---@return number
function GuiElementModCell.get_Scale() end

---@param value number
function GuiElementModCell.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementModCell.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementModCell.OnFocusLost() end

-- Renders the element as an interactive element.
---@param deltaTime number
function GuiElementModCell.RenderInteractiveElements(deltaTime) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementModCell.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementModCell.RenderFocusOverlay(deltaTime) end

function GuiElementModCell.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementModCell.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementModCell.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementModCell.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementModCell.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementModCell.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementModCell.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementModCell.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementModCell.OnMouseDown(api, mouse) end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementModCell.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementModCell.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementModCell.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementModCell.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementModCell.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementModCell.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementModCell.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementModCell.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementModCell.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementModCell.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementModCell.IsPositionInside(posX, posY) end

---@return string
function GuiElementModCell.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementModCell.OutlineColor() end

---@return userdata
function GuiElementModCell.GetType() end

---@return string
function GuiElementModCell.ToString() end

---@param obj userdata
---@return boolean
function GuiElementModCell.Equals(obj) end

---@return number
function GuiElementModCell.GetHashCode() end


