---@meta

---@class GuiElementVerticalTabs: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Focusable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field ActiveElement number
---@field Right boolean
---@field ToggleTabs boolean If true, more than one tab can be active
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementVerticalTabs = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param tabs GuiTab[]
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param selectedFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param onTabClicked function
---@return GuiElementVerticalTabs
function GuiElementVerticalTabs.ctor(capi, tabs, font, selectedFont, bounds, onTabClicked) end

---@return boolean
function GuiElementVerticalTabs.get_Focusable() end

---@param ctxStatic Context
---@param surfaceStatic ImageSurface
function GuiElementVerticalTabs.ComposeTextElements(ctxStatic, surfaceStatic) end

---@param deltaTime number
function GuiElementVerticalTabs.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementVerticalTabs.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementVerticalTabs.OnMouseDownOnElement(api, args) end

-- Switches to a different tab.
---@param index number
function GuiElementVerticalTabs.SetValue(index) end

-- Switches to a different tab.
---@param index number
---@param triggerHandler boolean
function GuiElementVerticalTabs.SetValue(index, triggerHandler) end

function GuiElementVerticalTabs.Dispose() end

---@return string
function GuiElementVerticalTabs.get_Text() end

---@param value string
function GuiElementVerticalTabs.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementVerticalTabs.ComposeElements(ctx, surface) end

---@return number
function GuiElementVerticalTabs.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementVerticalTabs.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementVerticalTabs.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementVerticalTabs.GetText() end

---@return boolean
function GuiElementVerticalTabs.get_Enabled() end

---@param value boolean
function GuiElementVerticalTabs.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementVerticalTabs.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementVerticalTabs.set_InsideClipBounds(value) end

---@return boolean
function GuiElementVerticalTabs.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementVerticalTabs.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementVerticalTabs.get_HasFocus() end

---@return number
function GuiElementVerticalTabs.get_DrawOrder() end

---@return number
function GuiElementVerticalTabs.get_Scale() end

---@param value number
function GuiElementVerticalTabs.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementVerticalTabs.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementVerticalTabs.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementVerticalTabs.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementVerticalTabs.RenderFocusOverlay(deltaTime) end

function GuiElementVerticalTabs.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementVerticalTabs.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementVerticalTabs.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementVerticalTabs.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementVerticalTabs.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementVerticalTabs.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementVerticalTabs.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementVerticalTabs.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementVerticalTabs.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementVerticalTabs.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementVerticalTabs.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementVerticalTabs.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementVerticalTabs.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementVerticalTabs.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementVerticalTabs.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementVerticalTabs.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementVerticalTabs.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementVerticalTabs.IsPositionInside(posX, posY) end

---@return string
function GuiElementVerticalTabs.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementVerticalTabs.OutlineColor() end

---@return userdata
function GuiElementVerticalTabs.GetType() end

---@return string
function GuiElementVerticalTabs.ToString() end

---@param obj userdata
---@return boolean
function GuiElementVerticalTabs.Equals(obj) end

---@return number
function GuiElementVerticalTabs.GetHashCode() end


