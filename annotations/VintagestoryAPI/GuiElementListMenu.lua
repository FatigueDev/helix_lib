---@meta

---@class GuiElementListMenu: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field Values string
---@field Names string
---@field SelectedIndex number The (first) currently selected element
---@field HoveredIndex number The element the user currently has the mouse over
---@field SelectedIndices number On multi select mode, the list of all selected elements
---@field IsOpened boolean Is the current menu opened?
---@field DrawOrder number
---@field Focusable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field MaxHeight number Max height of the expanded list
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementListMenu = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param values string
---@param names string
---@param selectedIndex number
---@param onSelectionChanged SelectionChangedDelegate
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param multiSelect boolean
---@return GuiElementListMenu
function GuiElementListMenu.ctor(capi, values, names, selectedIndex, onSelectionChanged, bounds, font, multiSelect) end

---@return string
function GuiElementListMenu.get_Values() end

---@param value string
function GuiElementListMenu.set_Values(value) end

---@return string
function GuiElementListMenu.get_Names() end

---@param value string
function GuiElementListMenu.set_Names(value) end

---@return number
function GuiElementListMenu.get_SelectedIndex() end

---@param value number
function GuiElementListMenu.set_SelectedIndex(value) end

---@return number
function GuiElementListMenu.get_HoveredIndex() end

---@param value number
function GuiElementListMenu.set_HoveredIndex(value) end

---@return number
function GuiElementListMenu.get_SelectedIndices() end

---@param value number
function GuiElementListMenu.set_SelectedIndices(value) end

---@return boolean
function GuiElementListMenu.get_IsOpened() end

---@return number
function GuiElementListMenu.get_DrawOrder() end

---@return boolean
function GuiElementListMenu.get_Focusable() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementListMenu.ComposeElements(ctx, surface) end

-- Composes the list of elements dynamically.
function GuiElementListMenu.ComposeDynamicElements() end

---@param posX number
---@param posY number
---@return boolean
function GuiElementListMenu.IsPositionInside(posX, posY) end

---@param deltaTime number
function GuiElementListMenu.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementListMenu.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementListMenu.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementListMenu.OnMouseUp(api, args) end

-- Opens the menu.
function GuiElementListMenu.Open() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementListMenu.OnMouseDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementListMenu.OnMouseWheel(api, args) end

function GuiElementListMenu.OnFocusLost() end

-- Sets the selected index.
---@param selectedIndex number
function GuiElementListMenu.SetSelectedIndex(selectedIndex) end

-- Sets the selected index to the given value.
---@param value string
function GuiElementListMenu.SetSelectedValue(value) end

-- Sets the list for the GUI Element list value.
---@param values string
---@param names string
function GuiElementListMenu.SetList(values, names) end

function GuiElementListMenu.Dispose() end

---@return string
function GuiElementListMenu.get_Text() end

---@param value string
function GuiElementListMenu.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementListMenu.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementListMenu.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementListMenu.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementListMenu.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementListMenu.GetText() end

---@return boolean
function GuiElementListMenu.get_Enabled() end

---@param value boolean
function GuiElementListMenu.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementListMenu.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementListMenu.set_InsideClipBounds(value) end

---@return boolean
function GuiElementListMenu.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementListMenu.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementListMenu.get_HasFocus() end

---@return number
function GuiElementListMenu.get_Scale() end

---@param value number
function GuiElementListMenu.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementListMenu.OnFocusGained() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementListMenu.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementListMenu.RenderFocusOverlay(deltaTime) end

function GuiElementListMenu.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementListMenu.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementListMenu.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementListMenu.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementListMenu.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementListMenu.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementListMenu.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementListMenu.RenderBoundsDebug() end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementListMenu.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementListMenu.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementListMenu.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementListMenu.OnMouseLeaveSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementListMenu.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementListMenu.OnKeyPress(api, args) end

---@return string
function GuiElementListMenu.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementListMenu.OutlineColor() end

---@return userdata
function GuiElementListMenu.GetType() end

---@return string
function GuiElementListMenu.ToString() end

---@param obj userdata
---@return boolean
function GuiElementListMenu.Equals(obj) end

---@return number
function GuiElementListMenu.GetHashCode() end


