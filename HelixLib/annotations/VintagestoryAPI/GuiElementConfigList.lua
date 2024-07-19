---@meta

-- A configurable list of items.  An example of this is the controls in the settings menu.
---@class GuiElementConfigList: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field leftWidthRel number
---@field rightWidthRel number
---@field items table
---@field innerBounds ElementBounds
---@field errorFont CairoFont
---@field stdFont CairoFont
---@field titleFont CairoFont
---@field unscaledPadding number
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementConfigList = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param items table
---@param OnItemClick ConfigItemClickDelegate
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementConfigList
function GuiElementConfigList.ctor(capi, items, OnItemClick, font, bounds) end

-- Automatically adjusts the height of the element.
function GuiElementConfigList.Autoheight() end

---@param ctxs Context
---@param surfaces ImageSurface
function GuiElementConfigList.ComposeTextElements(ctxs, surfaces) end

-- Refreshes the Config List.
function GuiElementConfigList.Refresh() end

---@param deltaTime number
function GuiElementConfigList.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementConfigList.OnMouseDownOnElement(api, args) end

function GuiElementConfigList.Dispose() end

---@return string
function GuiElementConfigList.get_Text() end

---@param value string
function GuiElementConfigList.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementConfigList.ComposeElements(ctx, surface) end

---@return number
function GuiElementConfigList.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementConfigList.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementConfigList.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementConfigList.GetText() end

---@return boolean
function GuiElementConfigList.get_Enabled() end

---@param value boolean
function GuiElementConfigList.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementConfigList.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementConfigList.set_InsideClipBounds(value) end

---@return boolean
function GuiElementConfigList.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementConfigList.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementConfigList.get_HasFocus() end

---@return number
function GuiElementConfigList.get_DrawOrder() end

---@return boolean
function GuiElementConfigList.get_Focusable() end

---@return number
function GuiElementConfigList.get_Scale() end

---@param value number
function GuiElementConfigList.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementConfigList.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementConfigList.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementConfigList.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementConfigList.RenderFocusOverlay(deltaTime) end

function GuiElementConfigList.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementConfigList.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementConfigList.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementConfigList.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementConfigList.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementConfigList.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementConfigList.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementConfigList.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementConfigList.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementConfigList.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementConfigList.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementConfigList.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementConfigList.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementConfigList.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementConfigList.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementConfigList.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementConfigList.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementConfigList.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementConfigList.IsPositionInside(posX, posY) end

---@return string
function GuiElementConfigList.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementConfigList.OutlineColor() end

---@return userdata
function GuiElementConfigList.GetType() end

---@return string
function GuiElementConfigList.ToString() end

---@param obj userdata
---@return boolean
function GuiElementConfigList.Equals(obj) end

---@return number
function GuiElementConfigList.GetHashCode() end


