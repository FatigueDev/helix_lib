---@meta

---@class MainMenuGuiAPI:  IGuiAPI
---@field TextTexture TextTextureUtil
---@field Text TextDrawUtil
---@field Icons IconUtil
---@field LoadedGuis table
---@field OpenedGuis table
---@field QuadMeshRef MeshRef
---@field WindowBounds ElementBounds
MainMenuGuiAPI = {}

---@param screenManager ScreenManager
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return MainMenuGuiAPI
function MainMenuGuiAPI.ctor(screenManager, capi) end

---@return TextTextureUtil
function MainMenuGuiAPI.get_TextTexture() end

---@return TextDrawUtil
function MainMenuGuiAPI.get_Text() end

---@return IconUtil
function MainMenuGuiAPI.get_Icons() end

---@return table
function MainMenuGuiAPI.get_LoadedGuis() end

---@return table
function MainMenuGuiAPI.get_OpenedGuis() end

---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function MainMenuGuiAPI.get_QuadMeshRef() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function MainMenuGuiAPI.get_WindowBounds() end

---@param texid number
function MainMenuGuiAPI.DeleteTexture(texid) end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function MainMenuGuiAPI.LoadCairoTexture(surface, linearMag) end

---@param surface ImageSurface
---@param linearMag boolean
---@param intoTexture LoadedTexture&
function MainMenuGuiAPI.LoadOrUpdateCairoTexture(surface, linearMag, intoTexture) end

---@param key string
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function MainMenuGuiAPI.GetDialogPosition(key) end

---@param key string
---@param pos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function MainMenuGuiAPI.SetDialogPosition(key, pos) end

---@param soundname string
---@param randomizePitch? boolean
---@param volume? number
function MainMenuGuiAPI.PlaySound(soundname, randomizePitch, volume) end

---@param dialogName string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function MainMenuGuiAPI.CreateCompo(dialogName, bounds) end

---@param dialogs GuiDialog[]
function MainMenuGuiAPI.RegisterDialog(dialogs) end

---@param soundname AssetLocation Defines a complete path to an assets, including it's domain
---@param randomizePitch? boolean
---@param volume? number
function MainMenuGuiAPI.PlaySound(soundname, randomizePitch, volume) end

---@param guiDialog GuiDialog
function MainMenuGuiAPI.RequestFocus(guiDialog) end

---@param guiDialog GuiDialog
function MainMenuGuiAPI.TriggerDialogOpened(guiDialog) end

---@param guiDialog GuiDialog
function MainMenuGuiAPI.TriggerDialogClosed(guiDialog) end

---@param area EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return table
function MainMenuGuiAPI.GetDialogBoundsInArea(area) end

---@param href string
function MainMenuGuiAPI.OpenLink(href) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param width? number
---@param height? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function MainMenuGuiAPI.LoadSvg(loc, textureWidth, textureHeight, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function MainMenuGuiAPI.DrawSvg(svgAsset, intoSurface, posx, posy, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param matrix Matrix
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function MainMenuGuiAPI.DrawSvg(svgAsset, intoSurface, matrix, posx, posy, width, height, color) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param textureWidth number
---@param textureHeight number
---@param padding? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function MainMenuGuiAPI.LoadSvgWithPadding(loc, textureWidth, textureHeight, padding, color) end

---@return userdata
function MainMenuGuiAPI.GetType() end

---@return string
function MainMenuGuiAPI.ToString() end

---@param obj userdata
---@return boolean
function MainMenuGuiAPI.Equals(obj) end

---@return number
function MainMenuGuiAPI.GetHashCode() end


