---@meta

---@class IGuiAPI
---@field QuadMeshRef MeshRef Just a default gpu-uploaded quad for 2d texture rendering, for your convenience
---@field LoadedGuis table List of all registered guis
---@field OpenedGuis table List of all currently opened guis
---@field TextTexture TextTextureUtil A utility class that does text texture generation for you
---@field Text TextDrawUtil A utlity class that helps draw text
---@field Icons IconUtil A utility class that contains a bunch of hardcoded icons
---@field WindowBounds ElementBounds Returns a ElementBounds that is always the size of the game window
IGuiAPI = {}


---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IGuiAPI.get_QuadMeshRef() end

---@return table
function IGuiAPI.get_LoadedGuis() end

---@return table
function IGuiAPI.get_OpenedGuis() end

---@return TextTextureUtil
function IGuiAPI.get_TextTexture() end

---@return TextDrawUtil
function IGuiAPI.get_Text() end

---@return IconUtil
function IGuiAPI.get_Icons() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function IGuiAPI.get_WindowBounds() end

-- If there is a currenly opened dialog or hud element, the method will return the bounds occuppying that area, otherwise null
---@param area EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return table
function IGuiAPI.GetDialogBoundsInArea(area) end

-- Creates a new gui composition
---@param dialogName string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function IGuiAPI.CreateCompo(dialogName, bounds) end

-- Register given dialog(s) to the gui/input event listening chain. You only need to call this if your dialog has to listen to events 
-- even while closed. The method GuiDialog.TryOpen() also does the register if not registered already.
---@param dialogs GuiDialog[]
function IGuiAPI.RegisterDialog(dialogs) end

-- Removes given texture from graphics card memory
---@param textureid number
function IGuiAPI.DeleteTexture(textureid) end

-- Loads an external .svg file into a texture. Will return null if the file is not found
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param width? number
---@param height? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IGuiAPI.LoadSvg(loc, textureWidth, textureHeight, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function IGuiAPI.DrawSvg(svgAsset, intoSurface, posx, posy, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param transform Matrix
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function IGuiAPI.DrawSvg(svgAsset, intoSurface, transform, posx, posy, width, height, color) end

-- Loads an external .svg file into a texture. Will return null if the file is not found
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param padding? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IGuiAPI.LoadSvgWithPadding(loc, textureWidth, textureHeight, padding, color) end

-- Load the contents of a cairo surface into a opengl texture. Returns the texture id
---@param surface ImageSurface
---@param linearMag boolean
---@return number
function IGuiAPI.LoadCairoTexture(surface, linearMag) end

---@param surface ImageSurface
---@param linearMag boolean
---@param intoTexture LoadedTexture&
function IGuiAPI.LoadOrUpdateCairoTexture(surface, linearMag, intoTexture) end

-- Retrieve the saved dialog position from settings
---@param key string
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function IGuiAPI.GetDialogPosition(key) end

-- Remember the dialog position for given dialog key
---@param key string
---@param pos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function IGuiAPI.SetDialogPosition(key, pos) end

-- Plays a sound, non location specific
---@param soundname string
---@param randomizePitch? boolean
---@param volume? number
function IGuiAPI.PlaySound(soundname, randomizePitch, volume) end

-- Plays a sound, non location specific.
---@param soundname AssetLocation Defines a complete path to an assets, including it's domain
---@param randomizePitch? boolean
---@param volume? number
function IGuiAPI.PlaySound(soundname, randomizePitch, volume) end

-- Requests the given GUI to be given focus.
---@param guiDialog GuiDialog
function IGuiAPI.RequestFocus(guiDialog) end

-- Triggers the opening of a dialogue.  
---@param guiDialog GuiDialog
function IGuiAPI.TriggerDialogOpened(guiDialog) end

-- Triggers the closing of a dialogue.
---@param guiDialog GuiDialog
function IGuiAPI.TriggerDialogClosed(guiDialog) end

-- Opens up a confirm dialog asking the player if he wants to open an external link
---@param href string
function IGuiAPI.OpenLink(href) end


