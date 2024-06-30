---@meta

-- A title bar for your GUI.  
---@class GuiElementDialogTitleBar: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Movable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field drawBg boolean
---@field unscaledCloseIconSize number The size of the close icon in the top right corner of the GUI.
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementDialogTitleBar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param text string
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param OnClose? function
---@param font? CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds? ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementDialogTitleBar
function GuiElementDialogTitleBar.ctor(capi, text, composer, OnClose, font, bounds) end

---@return boolean
function GuiElementDialogTitleBar.get_Movable() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementDialogTitleBar.ComposeTextElements(ctx, surface) end

---@param deltaTime number
function GuiElementDialogTitleBar.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDialogTitleBar.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDialogTitleBar.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDialogTitleBar.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDialogTitleBar.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDialogTitleBar.OnMouseDown(api, args) end

function GuiElementDialogTitleBar.OnFocusLost() end

function GuiElementDialogTitleBar.Dispose() end

---@return string
function GuiElementDialogTitleBar.get_Text() end

---@param value string
function GuiElementDialogTitleBar.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementDialogTitleBar.ComposeElements(ctx, surface) end

---@return number
function GuiElementDialogTitleBar.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementDialogTitleBar.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementDialogTitleBar.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementDialogTitleBar.GetText() end

---@return boolean
function GuiElementDialogTitleBar.get_Enabled() end

---@param value boolean
function GuiElementDialogTitleBar.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDialogTitleBar.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDialogTitleBar.set_InsideClipBounds(value) end

---@return boolean
function GuiElementDialogTitleBar.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementDialogTitleBar.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementDialogTitleBar.get_HasFocus() end

---@return number
function GuiElementDialogTitleBar.get_DrawOrder() end

---@return boolean
function GuiElementDialogTitleBar.get_Focusable() end

---@return number
function GuiElementDialogTitleBar.get_Scale() end

---@param value number
function GuiElementDialogTitleBar.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementDialogTitleBar.OnFocusGained() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementDialogTitleBar.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementDialogTitleBar.RenderFocusOverlay(deltaTime) end

function GuiElementDialogTitleBar.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDialogTitleBar.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementDialogTitleBar.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementDialogTitleBar.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementDialogTitleBar.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDialogTitleBar.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDialogTitleBar.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementDialogTitleBar.RenderBoundsDebug() end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDialogTitleBar.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDialogTitleBar.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDialogTitleBar.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementDialogTitleBar.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDialogTitleBar.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDialogTitleBar.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementDialogTitleBar.IsPositionInside(posX, posY) end

---@return string
function GuiElementDialogTitleBar.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementDialogTitleBar.OutlineColor() end

---@return userdata
function GuiElementDialogTitleBar.GetType() end

---@return string
function GuiElementDialogTitleBar.ToString() end

---@param obj userdata
---@return boolean
function GuiElementDialogTitleBar.Equals(obj) end

---@return number
function GuiElementDialogTitleBar.GetHashCode() end


