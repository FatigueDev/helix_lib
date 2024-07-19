---@meta

---@class GuiElementRichtext: GuiElement, IDisposable, GuiElement
---@field MaxLineWidth number
---@field TotalHeight number
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field Components RichTextComponentBase[]
---@field zPos number
---@field richtTextTexture LoadedTexture
---@field Debug boolean
---@field RenderColor Vec4f
---@field HalfComposed boolean
---@field DebugLogging boolean
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
GuiElementRichtext = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param components RichTextComponentBase[]
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElementRichtext
function GuiElementRichtext.ctor(capi, components, bounds) end

---@return number
function GuiElementRichtext.get_MaxLineWidth() end

---@return number
function GuiElementRichtext.get_TotalHeight() end

function GuiElementRichtext.BeforeCalcBounds() end

---@param ctxStatic Context
---@param surfaceStatic ImageSurface
function GuiElementRichtext.ComposeElements(ctxStatic, surfaceStatic) end

---@param genTextureLater? boolean
function GuiElementRichtext.Compose(genTextureLater) end

function GuiElementRichtext.genTexture() end

function GuiElementRichtext.CalcHeightAndPositions() end

---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param ctx Context
---@param surface ImageSurface
function GuiElementRichtext.ComposeFor(bounds, ctx, surface) end

-- Recomposes the element for lines.
function GuiElementRichtext.RecomposeText() end

---@param deltaTime number
function GuiElementRichtext.RenderInteractiveElements(deltaTime) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementRichtext.OnMouseMove(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementRichtext.OnMouseDownOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementRichtext.OnMouseUp(api, args) end

---@param vtmlCode string
---@param baseFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param didClickLink? function
function GuiElementRichtext.SetNewText(vtmlCode, baseFont, didClickLink) end

---@param comps RichTextComponentBase[]
function GuiElementRichtext.SetNewText(comps) end

---@param comps RichTextComponent[]
function GuiElementRichtext.AppendText(comps) end

---@param vtmlCode string
---@param baseFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param didClickLink? function
---@param recalcBounds? boolean
function GuiElementRichtext.SetNewTextWithoutRecompose(vtmlCode, baseFont, didClickLink, recalcBounds) end

---@param surface ImageSurface
---@param ctx Context
function GuiElementRichtext.RecomposeInto(surface, ctx) end

function GuiElementRichtext.Dispose() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementRichtext.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementRichtext.set_InsideClipBounds(value) end

---@return boolean
function GuiElementRichtext.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElementRichtext.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElementRichtext.get_HasFocus() end

---@return number
function GuiElementRichtext.get_DrawOrder() end

---@return boolean
function GuiElementRichtext.get_Focusable() end

---@return number
function GuiElementRichtext.get_Scale() end

---@param value number
function GuiElementRichtext.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElementRichtext.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElementRichtext.OnFocusLost() end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElementRichtext.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElementRichtext.RenderFocusOverlay(deltaTime) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElementRichtext.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElementRichtext.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElementRichtext.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElementRichtext.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementRichtext.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElementRichtext.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElementRichtext.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementRichtext.OnMouseDown(api, mouse) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElementRichtext.OnMouseUpOnElement(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementRichtext.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElementRichtext.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElementRichtext.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementRichtext.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementRichtext.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElementRichtext.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElementRichtext.IsPositionInside(posX, posY) end

---@return string
function GuiElementRichtext.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElementRichtext.OutlineColor() end

---@return userdata
function GuiElementRichtext.GetType() end

---@return string
function GuiElementRichtext.ToString() end

---@param obj userdata
---@return boolean
function GuiElementRichtext.Equals(obj) end

---@return number
function GuiElementRichtext.GetHashCode() end


