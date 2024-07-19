---@meta

---@class GuiElementEditableTextBase: GuiElementTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementTextBase
---@field TextLengthWithoutLineBreaks number
---@field CaretPosWithoutLineBreaks number
---@field CaretPosLine number
---@field CaretPosInLine number
---@field Focusable boolean
---@field Text string
---@field Enabled boolean Enables/disables the given element (default is enabled)
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field OnCaretPositionChanged function
---@field OnTextChanged function
---@field OnTryTextChangeText OnTryTextChangeDelegate
---@field OnCursorMoved function
---@field OnKeyPressed function Called when a keyboard key was pressed, received and handled
---@field WordWrap boolean
---@field textUtil TextDrawUtil
---@field textPathMode boolean Whether or not the text path mode is active.
---@field Font CairoFont The font of the Text Element.
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
---@field OnTryTextChangeDelegate nil
GuiElementEditableTextBase = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementEditableTextBase
function GuiElementEditableTextBase.ctor(capi, font, bounds) end

---@return table
function GuiElementEditableTextBase.GetLines() end

---@return number
function GuiElementEditableTextBase.get_TextLengthWithoutLineBreaks() end

---@return number
function GuiElementEditableTextBase.get_CaretPosWithoutLineBreaks() end

---@param value number
function GuiElementEditableTextBase.set_CaretPosWithoutLineBreaks(value) end

---@return number
function GuiElementEditableTextBase.get_CaretPosLine() end

---@param value number
function GuiElementEditableTextBase.set_CaretPosLine(value) end

---@return number
function GuiElementEditableTextBase.get_CaretPosInLine() end

---@param value number
function GuiElementEditableTextBase.set_CaretPosInLine(value) end

---@return boolean
function GuiElementEditableTextBase.get_Focusable() end

function GuiElementEditableTextBase.OnFocusGained() end

function GuiElementEditableTextBase.OnFocusLost() end

-- Sets the position of the cursor at a given point.
---@param x number
---@param y number
function GuiElementEditableTextBase.SetCaretPos(x, y) end

-- Sets the position of the cursor to a specific character.
---@param posInLine number
---@param posLine? number
function GuiElementEditableTextBase.SetCaretPos(posInLine, posLine) end

-- Sets a numerical value to the text, appending it to the end of the text.
---@param value number
function GuiElementEditableTextBase.SetValue(value) end

-- Sets given text, sets the cursor to the end of the text
---@param text string
---@param setCaretPosToEnd? boolean
function GuiElementEditableTextBase.SetValue(text, setCaretPosToEnd) end

-- Sets given texts, leaves cursor position unchanged
---@param newLines table
function GuiElementEditableTextBase.LoadValue(newLines) end

---@param text string
---@return table
function GuiElementEditableTextBase.Lineize(text) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementEditableTextBase.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementEditableTextBase.OnKeyDown(api, args) end

---@return string
function GuiElementEditableTextBase.GetText() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementEditableTextBase.OnKeyPress(api, args) end

---@param deltaTime number
function GuiElementEditableTextBase.RenderInteractiveElements(deltaTime) end

function GuiElementEditableTextBase.Dispose() end

-- Moves the cursor forward and backward by an amount.
---@param dir number
---@param wholeWord? boolean
function GuiElementEditableTextBase.MoveCursor(dir, wholeWord) end

-- Sets the number of lines in the Text Area.
---@param maxlines number
function GuiElementEditableTextBase.SetMaxLines(maxlines) end

---@param maxheight number
function GuiElementEditableTextBase.SetMaxHeight(maxheight) end

---@return string
function GuiElementEditableTextBase.get_Text() end

---@param value string
function GuiElementEditableTextBase.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementEditableTextBase.ComposeElements(ctx, surface) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementEditableTextBase.ComposeTextElements(ctx, surface) end

---@return number
function GuiElementEditableTextBase.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementEditableTextBase.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementEditableTextBase.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

---@return boolean
function GuiElementEditableTextBase.get_Enabled() end

---@param value boolean
function GuiElementEditableTextBase.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementEditableTextBase.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementEditableTextBase.set_InsideClipBounds(value) end

---@return boolean
function GuiElementEditableTextBase.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementEditableTextBase.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementEditableTextBase.get_HasFocus() end

---@return number
function GuiElementEditableTextBase.get_DrawOrder() end

---@return number
function GuiElementEditableTextBase.get_Scale() end

---@param value number
function GuiElementEditableTextBase.set_Scale(value) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementEditableTextBase.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementEditableTextBase.RenderFocusOverlay(deltaTime) end

function GuiElementEditableTextBase.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementEditableTextBase.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementEditableTextBase.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementEditableTextBase.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementEditableTextBase.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementEditableTextBase.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementEditableTextBase.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementEditableTextBase.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementEditableTextBase.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementEditableTextBase.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementEditableTextBase.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementEditableTextBase.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementEditableTextBase.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementEditableTextBase.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementEditableTextBase.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementEditableTextBase.OnKeyUp(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementEditableTextBase.IsPositionInside(posX, posY) end

---@return string
function GuiElementEditableTextBase.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementEditableTextBase.OutlineColor() end

---@return userdata
function GuiElementEditableTextBase.GetType() end

---@return string
function GuiElementEditableTextBase.ToString() end

---@param obj userdata
---@return boolean
function GuiElementEditableTextBase.Equals(obj) end

---@return number
function GuiElementEditableTextBase.GetHashCode() end


