---@meta

---@class GuiElementChatInput: GuiElementEditableTextBase, IDisposable, GuiElement, GuiElementControl, GuiElementEditableTextBase, GuiElementTextBase
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
GuiElementChatInput = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param OnTextChanged function
---@return GuiElementChatInput
function GuiElementChatInput.ctor(capi, bounds, OnTextChanged) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementChatInput.ComposeTextElements(ctx, surface) end

---@param deltaTime number
function GuiElementChatInput.RenderInteractiveElements(deltaTime) end

function GuiElementChatInput.Dispose() end

---@return table
function GuiElementChatInput.GetLines() end

---@return number
function GuiElementChatInput.get_TextLengthWithoutLineBreaks() end

---@return number
function GuiElementChatInput.get_CaretPosWithoutLineBreaks() end

---@param value number
function GuiElementChatInput.set_CaretPosWithoutLineBreaks(value) end

---@return number
function GuiElementChatInput.get_CaretPosLine() end

---@param value number
function GuiElementChatInput.set_CaretPosLine(value) end

---@return number
function GuiElementChatInput.get_CaretPosInLine() end

---@param value number
function GuiElementChatInput.set_CaretPosInLine(value) end

---@return boolean
function GuiElementChatInput.get_Focusable() end

function GuiElementChatInput.OnFocusGained() end

function GuiElementChatInput.OnFocusLost() end

-- Sets the position of the cursor at a given point.
---@param x number
---@param y number
function GuiElementChatInput.SetCaretPos(x, y) end

-- Sets the position of the cursor to a specific character.
---@param posInLine number
---@param posLine? number
function GuiElementChatInput.SetCaretPos(posInLine, posLine) end

-- Sets a numerical value to the text, appending it to the end of the text.
---@param value number
function GuiElementChatInput.SetValue(value) end

-- Sets given text, sets the cursor to the end of the text
---@param text string
---@param setCaretPosToEnd? boolean
function GuiElementChatInput.SetValue(text, setCaretPosToEnd) end

-- Sets given texts, leaves cursor position unchanged
---@param newLines table
function GuiElementChatInput.LoadValue(newLines) end

---@param text string
---@return table
function GuiElementChatInput.Lineize(text) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementChatInput.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementChatInput.OnKeyDown(api, args) end

---@return string
function GuiElementChatInput.GetText() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementChatInput.OnKeyPress(api, args) end

-- Moves the cursor forward and backward by an amount.
---@param dir number
---@param wholeWord? boolean
function GuiElementChatInput.MoveCursor(dir, wholeWord) end

-- Sets the number of lines in the Text Area.
---@param maxlines number
function GuiElementChatInput.SetMaxLines(maxlines) end

---@param maxheight number
function GuiElementChatInput.SetMaxHeight(maxheight) end

---@return string
function GuiElementChatInput.get_Text() end

---@param value string
function GuiElementChatInput.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementChatInput.ComposeElements(ctx, surface) end

---@return number
function GuiElementChatInput.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementChatInput.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementChatInput.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

---@return boolean
function GuiElementChatInput.get_Enabled() end

---@param value boolean
function GuiElementChatInput.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementChatInput.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementChatInput.set_InsideClipBounds(value) end

---@return boolean
function GuiElementChatInput.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementChatInput.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementChatInput.get_HasFocus() end

---@return number
function GuiElementChatInput.get_DrawOrder() end

---@return number
function GuiElementChatInput.get_Scale() end

---@param value number
function GuiElementChatInput.set_Scale(value) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementChatInput.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementChatInput.RenderFocusOverlay(deltaTime) end

function GuiElementChatInput.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementChatInput.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementChatInput.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementChatInput.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementChatInput.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementChatInput.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementChatInput.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementChatInput.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementChatInput.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementChatInput.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementChatInput.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementChatInput.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementChatInput.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementChatInput.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementChatInput.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementChatInput.OnKeyUp(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementChatInput.IsPositionInside(posX, posY) end

---@return string
function GuiElementChatInput.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementChatInput.OutlineColor() end

---@return userdata
function GuiElementChatInput.GetType() end

---@return string
function GuiElementChatInput.ToString() end

---@param obj userdata
---@return boolean
function GuiElementChatInput.Equals(obj) end

---@return number
function GuiElementChatInput.GetHashCode() end


