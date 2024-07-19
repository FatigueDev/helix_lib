---@meta

---@class GuiElementHorizontalTabs: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Focusable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field activeElement number
---@field unscaledTabSpacing number
---@field unscaledTabPadding number
---@field AlarmTabs boolean
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementHorizontalTabs = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param tabs GuiTab[]
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param selectedFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param onTabClicked function
---@return GuiElementHorizontalTabs
function GuiElementHorizontalTabs.ctor(capi, tabs, font, selectedFont, bounds, onTabClicked) end

---@return boolean
function GuiElementHorizontalTabs.get_Focusable() end

---@param tabIndex number
function GuiElementHorizontalTabs.SetAlarmTab(tabIndex) end

---@param notifyFont CairoFont Represent a font with sizing and styling for use in rendering text
function GuiElementHorizontalTabs.WithAlarmTabs(notifyFont) end

---@param ctxStatic Context
---@param surfaceStatic ImageSurface
function GuiElementHorizontalTabs.ComposeTextElements(ctxStatic, surfaceStatic) end

---@param deltaTime number
function GuiElementHorizontalTabs.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHorizontalTabs.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHorizontalTabs.OnMouseDownOnElement(api, args) end

-- Sets the current tab to the given index.
---@param selectedIndex number
---@param callhandler? boolean
function GuiElementHorizontalTabs.SetValue(selectedIndex, callhandler) end

function GuiElementHorizontalTabs.Dispose() end

---@return string
function GuiElementHorizontalTabs.get_Text() end

---@param value string
function GuiElementHorizontalTabs.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementHorizontalTabs.ComposeElements(ctx, surface) end

---@return number
function GuiElementHorizontalTabs.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementHorizontalTabs.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementHorizontalTabs.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementHorizontalTabs.GetText() end

---@return boolean
function GuiElementHorizontalTabs.get_Enabled() end

---@param value boolean
function GuiElementHorizontalTabs.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHorizontalTabs.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHorizontalTabs.set_InsideClipBounds(value) end

---@return boolean
function GuiElementHorizontalTabs.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementHorizontalTabs.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementHorizontalTabs.get_HasFocus() end

---@return number
function GuiElementHorizontalTabs.get_DrawOrder() end

---@return number
function GuiElementHorizontalTabs.get_Scale() end

---@param value number
function GuiElementHorizontalTabs.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementHorizontalTabs.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementHorizontalTabs.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementHorizontalTabs.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementHorizontalTabs.RenderFocusOverlay(deltaTime) end

function GuiElementHorizontalTabs.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementHorizontalTabs.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementHorizontalTabs.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementHorizontalTabs.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementHorizontalTabs.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementHorizontalTabs.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementHorizontalTabs.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementHorizontalTabs.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHorizontalTabs.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHorizontalTabs.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHorizontalTabs.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementHorizontalTabs.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementHorizontalTabs.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementHorizontalTabs.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementHorizontalTabs.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHorizontalTabs.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementHorizontalTabs.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementHorizontalTabs.IsPositionInside(posX, posY) end

---@return string
function GuiElementHorizontalTabs.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementHorizontalTabs.OutlineColor() end

---@return userdata
function GuiElementHorizontalTabs.GetType() end

---@return string
function GuiElementHorizontalTabs.ToString() end

---@param obj userdata
---@return boolean
function GuiElementHorizontalTabs.Equals(obj) end

---@return number
function GuiElementHorizontalTabs.GetHashCode() end


