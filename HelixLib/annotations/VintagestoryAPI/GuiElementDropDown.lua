---@meta

-- Creates a drop-down list of items.
---@class GuiElementDropDown: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field DrawOrder number The draw order of this GUI Element.
---@field Focusable boolean Can this element be put into focus?
---@field Scale number The scale of this GUI element.
---@field SelectedValue string
---@field SelectedIndices number
---@field SelectedValues string
---@field Enabled boolean
---@field Text string
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field MouseOverCursor string
---@field SingularNameCode string
---@field PluralNameCode string
---@field PluralMoreNameCode string
---@field SingularMoreNameCode string
---@field listMenu GuiElementListMenu
---@field richTextElem GuiElementRichtext
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementDropDown = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param values string
---@param names string
---@param selectedIndex number
---@param onSelectionChanged SelectionChangedDelegate
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param multiSelect boolean
---@return GuiElementDropDown
function GuiElementDropDown.ctor(capi, values, names, selectedIndex, onSelectionChanged, bounds, font, multiSelect) end

---@return number
function GuiElementDropDown.get_DrawOrder() end

---@return boolean
function GuiElementDropDown.get_Focusable() end

---@return number
function GuiElementDropDown.get_Scale() end

---@param value number
function GuiElementDropDown.set_Scale(value) end

---@return string
function GuiElementDropDown.get_SelectedValue() end

---@return number
function GuiElementDropDown.get_SelectedIndices() end

---@return string
function GuiElementDropDown.get_SelectedValues() end

---@return boolean
function GuiElementDropDown.get_Enabled() end

---@param value boolean
function GuiElementDropDown.set_Enabled(value) end

-- Composes the element based on the context.
---@param ctx Context
---@param surface ImageSurface
function GuiElementDropDown.ComposeElements(ctx, surface) end

-- Renders the dropdown's interactive elements.
---@param deltaTime number
function GuiElementDropDown.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDropDown.OnKeyDown(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDropDown.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementDropDown.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDropDown.OnMouseUp(api, args) end

---@param posX number
---@param posY number
---@return boolean
function GuiElementDropDown.IsPositionInside(posX, posY) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDropDown.OnMouseDown(api, args) end

function GuiElementDropDown.OnFocusLost() end

-- Sets the current index to a newly selected index.
---@param selectedIndex number
function GuiElementDropDown.SetSelectedIndex(selectedIndex) end

-- Sets the current index to the value of the selected string.
---@param value string
function GuiElementDropDown.SetSelectedValue(value) end

-- Sets the values of the list with their corresponding names.
---@param values string
---@param names string
function GuiElementDropDown.SetList(values, names) end

function GuiElementDropDown.Dispose() end

---@return string
function GuiElementDropDown.get_Text() end

---@param value string
function GuiElementDropDown.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementDropDown.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementDropDown.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementDropDown.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementDropDown.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

-- Gets the text on the element.
---@return string
function GuiElementDropDown.GetText() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDropDown.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDropDown.set_InsideClipBounds(value) end

---@return boolean
function GuiElementDropDown.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementDropDown.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementDropDown.get_HasFocus() end

-- The event fired when the element gains focus.
function GuiElementDropDown.OnFocusGained() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementDropDown.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementDropDown.RenderFocusOverlay(deltaTime) end

function GuiElementDropDown.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementDropDown.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementDropDown.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementDropDown.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementDropDown.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDropDown.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementDropDown.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementDropDown.RenderBoundsDebug() end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDropDown.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementDropDown.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDropDown.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementDropDown.OnMouseLeaveSlot(api, slot) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDropDown.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementDropDown.OnKeyPress(api, args) end

---@return string
function GuiElementDropDown.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementDropDown.OutlineColor() end

---@return userdata
function GuiElementDropDown.GetType() end

---@return string
function GuiElementDropDown.ToString() end

---@param obj userdata
---@return boolean
function GuiElementDropDown.Equals(obj) end

---@return number
function GuiElementDropDown.GetHashCode() end


