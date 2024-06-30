---@meta

---@class GuiElement:  IDisposable
---@field InsideClipBounds ElementBounds If the element is inside a clip or not.
---@field RenderAsPremultipliedAlpha boolean
---@field HasFocus boolean Whether or not the element has focus or not.
---@field DrawOrder number 0 = draw first, 1 = draw last. Only for interactive elements.
---@field Focusable boolean Whether or not the element can be focused.
---@field Scale number The scale of the element.
---@field MouseOverCursor string
---@field Bounds ElementBounds The bounds of the element.
---@field TabIndex number The tab index of the element.
---@field dirtTextureName AssetLocation
---@field noisyMetalTextureName AssetLocation
---@field woodTextureName AssetLocation
---@field stoneTextureName AssetLocation
---@field waterTextureName AssetLocation
---@field paperTextureName AssetLocation
GuiElement = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiElement
function GuiElement.ctor(capi, bounds) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElement.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElement.set_InsideClipBounds(value) end

---@return boolean
function GuiElement.get_RenderAsPremultipliedAlpha() end

---@param value boolean
function GuiElement.set_RenderAsPremultipliedAlpha(value) end

---@return boolean
function GuiElement.get_HasFocus() end

---@return number
function GuiElement.get_DrawOrder() end

---@return boolean
function GuiElement.get_Focusable() end

---@return number
function GuiElement.get_Scale() end

---@param value number
function GuiElement.set_Scale(value) end

-- The event fired when the element gains focus.
function GuiElement.OnFocusGained() end

-- The event fired when the element looses focus.
function GuiElement.OnFocusLost() end

-- Composes the elements.
---@param ctxStatic Context
---@param surface ImageSurface
function GuiElement.ComposeElements(ctxStatic, surface) end

-- Renders the element as an interactive element.
---@param deltaTime number
function GuiElement.RenderInteractiveElements(deltaTime) end

-- The post render of the interactive element.
---@param deltaTime number
function GuiElement.PostRenderInteractiveElements(deltaTime) end

-- Renders the focus overlay.
---@param deltaTime number
function GuiElement.RenderFocusOverlay(deltaTime) end

-- Changes the scale of given value by the GUIScale factor.
---@param value number
---@return number
function GuiElement.scaled(value) end

-- Changes the scale of given value by the GUIScale factor
---@param value number
---@return number
function GuiElement.scaledi(value) end

-- Gets a surface pattern based off the bitmap.
---@param bitmap SKBitmap
---@return SurfacePattern
function GuiElement.getPattern(bitmap) end

-- Gets a surface pattern based off the bitmap.
---@param bitmap BitmapExternal
---@return SurfacePattern
function GuiElement.getPattern(bitmap) end

-- Gets an image surface based off the bitmap.
---@param bitmap SKBitmap
---@return ImageSurface
function GuiElement.getImageSurfaceFromAsset(bitmap) end

-- Gets an image surface based off the bitmap.
---@param bitmap BitmapExternal
---@return ImageSurface
function GuiElement.getImageSurfaceFromAsset(bitmap) end

-- Gets an image surface based off the bitmap.
---@param bitmap SKBitmap
---@param width number
---@param height number
---@return ImageSurface
function GuiElement.getImageSurfaceFromAsset(bitmap, width, height) end

-- Gets an image surface based off the bitmap.
---@param bitmap BitmapExternal
---@param width number
---@param height number
---@return ImageSurface
function GuiElement.getImageSurfaceFromAsset(bitmap, width, height) end

function GuiElement.BeforeCalcBounds() end

-- Gets a surface pattern from a named file.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param textureLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param doCache? boolean
---@param mulAlpha? number
---@param scale? number
---@return SurfacePattern
function GuiElement.getPattern(capi, textureLoc, doCache, mulAlpha, scale) end

-- Fetches an image surface from a named file.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param textureLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param mulAlpha? number
---@return ImageSurface
function GuiElement.getImageSurfaceFromAsset(capi, textureLoc, mulAlpha) end

-- Fills an area with a pattern.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param ctx Context
---@param textureLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param nearestScalingFiler? boolean
---@param preserve? boolean
---@param mulAlpha? number
---@param scale? number
---@return SurfacePattern
function GuiElement.fillWithPattern(capi, ctx, textureLoc, nearestScalingFiler, preserve, mulAlpha, scale) end

-- Discards a pattern based off the the filename.
---@param textureLoc AssetLocation Defines a complete path to an assets, including it's domain
function GuiElement.DiscardPattern(textureLoc) end

-- Makes a rectangle with the provided context and bounds.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElement.Rectangle(ctx, bounds) end

-- Makes a rectangle with specified parameters.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
function GuiElement.Rectangle(ctx, x, y, width, height) end

-- Creates a rounded rectangle.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiElement.DialogRoundRectangle(ctx, bounds) end

-- Creates a rounded rectangle element.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param isBackground? boolean
---@param radius? number
function GuiElement.ElementRoundRectangle(ctx, bounds, isBackground, radius) end

-- Creates a rounded rectangle
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param radius number
function GuiElement.RoundRectangle(ctx, x, y, width, height, radius) end

-- Shades a path with the given context.
---@param ctx Context
---@param thickness? number
function GuiElement.ShadePath(ctx, thickness) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
function GuiElement.EmbossRoundRectangleDialog(ctx, x, y, width, height, inverse) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElement.EmbossRoundRectangleElement(ctx, x, y, width, height, inverse, depth, radius) end

-- Adds an embossed rounded rectangle to the dialog.
---@param ctx Context
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param inverse? boolean
---@param depth? number
---@param radius? number
function GuiElement.EmbossRoundRectangleElement(ctx, bounds, inverse, depth, radius) end

function GuiElement.RenderBoundsDebug() end

-- The event fired when the mouse is down the element is around.  Fires before OnMouseDownOnElement, however OnMouseDownOnElement is called within the base function.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiElement.OnMouseDown(api, mouse) end

-- The event fired when the mouse is pressed while on the element. Called after OnMouseDown and tells the engine that the event is handled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElement.OnMouseDownOnElement(api, args) end

-- The event fired when the mouse is released on the element.  Called after OnMouseUp.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElement.OnMouseUpOnElement(api, args) end

-- The event fired when the mouse is released.  
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElement.OnMouseUp(api, args) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElement.OnMouseEnterSlot(api, slot) end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiElement.OnMouseLeaveSlot(api, slot) end

-- The event fired when the mouse is moved.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiElement.OnMouseMove(api, args) end

-- The event fired when the mouse wheel is scrolled.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiElement.OnMouseWheel(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElement.OnKeyDown(api, args) end

-- The event fired when a key is held down.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElement.OnKeyUp(api, args) end

-- The event fired the moment a key is pressed.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param args KeyEvent
function GuiElement.OnKeyPress(api, args) end

-- Whether or not the point on screen is inside the Element's area.
---@param posX number
---@param posY number
---@return boolean
function GuiElement.IsPositionInside(posX, posY) end

---@return string
function GuiElement.get_MouseOverCursor() end

-- The compressed version of the debug outline color as a single int value.
---@return number
function GuiElement.OutlineColor() end

function GuiElement.Dispose() end

---@return userdata
function GuiElement.GetType() end

---@return string
function GuiElement.ToString() end

---@param obj userdata
---@return boolean
function GuiElement.Equals(obj) end

---@return number
function GuiElement.GetHashCode() end


