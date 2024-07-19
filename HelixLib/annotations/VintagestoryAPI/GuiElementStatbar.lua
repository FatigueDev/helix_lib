---@meta

-- A stat bar to the GUI for keeping track of progress and numbers.
---@class GuiElementStatbar: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field HideWhenFull boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field ShouldFlash boolean
---@field FlashTime number
---@field ShowValueOnHover boolean
---@field onGetStatbarValue StatbarValueDelegate
---@field valueFont CairoFont
---@field DefaultHeight number
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementStatbar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param color number
---@param rightToLeft boolean
---@param hideable boolean
---@return GuiElementStatbar
function GuiElementStatbar.ctor(capi, bounds, color, rightToLeft, hideable) end

---@return boolean
function GuiElementStatbar.get_HideWhenFull() end

---@param value boolean
function GuiElementStatbar.set_HideWhenFull(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementStatbar.ComposeElements(ctx, surface) end

---@param deltaTime number
function GuiElementStatbar.RenderInteractiveElements(deltaTime) end

-- Sets the line interval for the Status Bar.
---@param value number
function GuiElementStatbar.SetLineInterval(value) end

-- Sets the value for the status bar and updates the bar.
---@param value number
function GuiElementStatbar.SetValue(value) end

---@return number
function GuiElementStatbar.GetValue() end

-- Sets the value for the status bar as well as the minimum and maximum values.
---@param value number
---@param min number
---@param max number
function GuiElementStatbar.SetValues(value, min, max) end

-- Sets the minimum and maximum values of the status bar.
---@param min number
---@param max number
function GuiElementStatbar.SetMinMax(min, max) end

function GuiElementStatbar.Dispose() end

---@return string
function GuiElementStatbar.get_Text() end

---@param value string
function GuiElementStatbar.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementStatbar.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementStatbar.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementStatbar.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementStatbar.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementStatbar.GetText() end

---@return boolean
function GuiElementStatbar.get_Enabled() end

---@param value boolean
function GuiElementStatbar.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementStatbar.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementStatbar.set_InsideClipBounds(value) end

---@return boolean
function GuiElementStatbar.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementStatbar.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementStatbar.get_HasFocus() end

---@return number
function GuiElementStatbar.get_DrawOrder() end

---@return boolean
function GuiElementStatbar.get_Focusable() end

---@return number
function GuiElementStatbar.get_Scale() end

---@param value number
function GuiElementStatbar.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementStatbar.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementStatbar.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementStatbar.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementStatbar.RenderFocusOverlay(deltaTime) end

function GuiElementStatbar.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementStatbar.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementStatbar.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementStatbar.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementStatbar.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementStatbar.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementStatbar.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementStatbar.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementStatbar.OnMouseDown(api, mouse) end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementStatbar.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementStatbar.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementStatbar.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementStatbar.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementStatbar.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementStatbar.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementStatbar.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementStatbar.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementStatbar.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementStatbar.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementStatbar.IsPositionInside(posX, posY) end

---@return string
function GuiElementStatbar.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementStatbar.OutlineColor() end

---@return userdata
function GuiElementStatbar.GetType() end

---@return string
function GuiElementStatbar.ToString() end

---@param obj userdata
---@return boolean
function GuiElementStatbar.Equals(obj) end

---@return number
function GuiElementStatbar.GetHashCode() end


