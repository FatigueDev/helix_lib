---@meta

---@class GuiAPI:  IGuiAPI
---@field TextTexture TextTextureUtil
---@field Icons IconUtil
---@field Text TextDrawUtil
---@field LoadedGuis table
---@field QuadMeshRef MeshRef
---@field WindowBounds ElementBounds
---@field guimgr GuiManager
GuiAPI = {}

---@param game ClientMain
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiAPI
function GuiAPI.ctor(game, capi) end

---@return TextTextureUtil
function GuiAPI.get_TextTexture() end

---@return IconUtil
function GuiAPI.get_Icons() end

---@return TextDrawUtil
function GuiAPI.get_Text() end

---@return table
function GuiAPI.get_LoadedGuis() end

---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function GuiAPI.get_QuadMeshRef() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiAPI.get_WindowBounds() end

---@param dialogName string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiAPI.CreateCompo(dialogName, bounds) end

---@param textureid number
function GuiAPI.DeleteTexture(textureid) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function GuiAPI.DrawSvg(svgAsset, intoSurface, posx, posy, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param matrix Matrix
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function GuiAPI.DrawSvg(svgAsset, intoSurface, matrix, posx, posy, width, height, color) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param width? number
---@param height? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function GuiAPI.LoadSvg(loc, textureWidth, textureHeight, width, height, color) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param padding? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function GuiAPI.LoadSvgWithPadding(loc, textureWidth, textureHeight, padding, color) end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function GuiAPI.LoadCairoTexture(surface, linearMag) end

---@param surface ImageSurface
---@param linearMag boolean
---@param intoTexture LoadedTexture&
function GuiAPI.LoadOrUpdateCairoTexture(surface, linearMag, intoTexture) end

---@param key string
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function GuiAPI.GetDialogPosition(key) end

---@param key string
---@param pos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function GuiAPI.SetDialogPosition(key, pos) end

---@param soundname string
---@param randomizePitch? boolean
---@param volume? number
function GuiAPI.PlaySound(soundname, randomizePitch, volume) end

---@param soundname AssetLocation Defines a complete path to an assets, including it's domain
---@param randomizePitch? boolean
---@param volume? number
function GuiAPI.PlaySound(soundname, randomizePitch, volume) end

---@param guiDialog GuiDialog
function GuiAPI.RequestFocus(guiDialog) end

---@param guiDialog GuiDialog
function GuiAPI.TriggerDialogOpened(guiDialog) end

---@param guiDialog GuiDialog
function GuiAPI.TriggerDialogClosed(guiDialog) end

---@param dialogs GuiDialog[]
function GuiAPI.RegisterDialog(dialogs) end

---@param area EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return table
function GuiAPI.GetDialogBoundsInArea(area) end

---@param href string
function GuiAPI.OpenLink(href) end

---@return userdata
function GuiAPI.GetType() end

---@return string
function GuiAPI.ToString() end

---@param obj userdata
---@return boolean
function GuiAPI.Equals(obj) end

---@return number
function GuiAPI.GetHashCode() end


