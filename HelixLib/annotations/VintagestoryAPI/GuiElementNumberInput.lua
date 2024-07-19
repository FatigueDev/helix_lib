---@meta

-- A numerical input field for inputting numbers.
---@class GuiElementNumberInput: GuiElementTextInput, IDisposable, GuiElement, GuiElementControl, GuiElementTextInput, GuiElementEditableTextBase, GuiElementTextBase
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
---@field Interval number
---@field buttonHighlightTexture LoadedTexture
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
GuiElementNumberInput = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param OnTextChanged function
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@return GuiElementNumberInput
function GuiElementNumberInput.ctor(capi, bounds, OnTextChanged, font) end

-- Gets the current value of the number.
---@return number
function GuiElementNumberInput.GetValue() end

---@param ctx Context
---@param surface ImageSurface
function GuiElementNumberInput.ComposeTextElements(ctx, surface) end

---@param deltaTime number
function GuiElementNumberInput.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementNumberInput.OnMouseWheel(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementNumberInput.OnMouseDownOnElement(api, args) end

function GuiElementNumberInput.Dispose() end

-- Tells the text component to hide the characters in the text.
function GuiElementNumberInput.HideCharacters() end

---@param text string
function GuiElementNumberInput.SetPlaceHolderText(text) end

function GuiElementNumberInput.OnFocusLost() end

function GuiElementNumberInput.OnFocusGained() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementNumberInput.OnKeyDown(api, args) end

---@return table
function GuiElementNumberInput.GetLines() end

---@return number
function GuiElementNumberInput.get_TextLengthWithoutLineBreaks() end

---@return number
function GuiElementNumberInput.get_CaretPosWithoutLineBreaks() end

---@param value number
function GuiElementNumberInput.set_CaretPosWithoutLineBreaks(value) end

---@return number
function GuiElementNumberInput.get_CaretPosLine() end

---@param value number
function GuiElementNumberInput.set_CaretPosLine(value) end

---@return number
function GuiElementNumberInput.get_CaretPosInLine() end

---@param value number
function GuiElementNumberInput.set_CaretPosInLine(value) end

---@return boolean
function GuiElementNumberInput.get_Focusable() end

-- Sets the position of the cursor at a given point.
---@param x number
---@param y number
function GuiElementNumberInput.SetCaretPos(x, y) end

-- Sets the position of the cursor to a specific character.
---@param posInLine number
---@param posLine? number
function GuiElementNumberInput.SetCaretPos(posInLine, posLine) end

-- Sets a numerical value to the text, appending it to the end of the text.
---@param value number
function GuiElementNumberInput.SetValue(value) end

-- Sets given text, sets the cursor to the end of the text
---@param text string
---@param setCaretPosToEnd? boolean
function GuiElementNumberInput.SetValue(text, setCaretPosToEnd) end

-- Sets given texts, leaves cursor position unchanged
---@param newLines table
function GuiElementNumberInput.LoadValue(newLines) end

---@param text string
---@return table
function GuiElementNumberInput.Lineize(text) end

---@return string
function GuiElementNumberInput.GetText() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementNumberInput.OnKeyPress(api, args) end

-- Moves the cursor forward and backward by an amount.
---@param dir number
---@param wholeWord? boolean
function GuiElementNumberInput.MoveCursor(dir, wholeWord) end

-- Sets the number of lines in the Text Area.
---@param maxlines number
function GuiElementNumberInput.SetMaxLines(maxlines) end

---@param maxheight number
function GuiElementNumberInput.SetMaxHeight(maxheight) end

---@return string
function GuiElementNumberInput.get_Text() end

---@param value string
function GuiElementNumberInput.set_Text(value) end

---@param ctx Context
---@param surface ImageSurface
function GuiElementNumberInput.ComposeElements(ctx, surface) end

---@return number
function GuiElementNumberInput.GetMultilineTextHeight() end

---@param ctx Context
---@param posX number
---@param posY number
---@param orientation? EnumTextOrientation
---@return number
function GuiElementNumberInput.DrawMultilineTextAt(ctx, posX, posY, orientation) end

-- Draws the line of text on a component.
---@param ctx Context
---@param text string
---@param posX number
---@param posY number
---@param textPathMode? boolean
function GuiElementNumberInput.DrawTextLineAt(ctx, text, posX, posY, textPathMode) end

---@return boolean
function GuiElementNumberInput.get_Enabled() end

---@param value boolean
function GuiElementNumberInput.set_Enabled(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementNumberInput.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementNumberInput.set_InsideClipBounds(value) end

---@return boolean
function GuiElementNumberInput.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementNumberInput.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementNumberInput.get_HasFocus() end

---@return number
function GuiElementNumberInput.get_DrawOrder() end

---@return number
function GuiElementNumberInput.get_Scale() end

---@param value number
function GuiElementNumberInput.set_Scale(value) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementNumberInput.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementNumberInput.RenderFocusOverlay(deltaTime) end

function GuiElementNumberInput.BeforeCalcBounds() end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementNumberInput.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementNumberInput.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementNumberInput.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementNumberInput.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementNumberInput.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementNumberInput.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementNumberInput.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementNumberInput.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementNumberInput.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementNumberInput.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementNumberInput.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementNumberInput.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementNumberInput.OnMouseMove(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementNumberInput.OnKeyUp(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementNumberInput.IsPositionInside(posX, posY) end

---@return string
function GuiElementNumberInput.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementNumberInput.OutlineColor() end

---@return userdata
function GuiElementNumberInput.GetType() end

---@return string
function GuiElementNumberInput.ToString() end

---@param obj userdata
---@return boolean
function GuiElementNumberInput.Equals(obj) end

---@return number
function GuiElementNumberInput.GetHashCode() end


