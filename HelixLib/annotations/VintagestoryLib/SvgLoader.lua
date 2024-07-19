---@meta

---@class SvgLoader
SvgLoader = {}

---@param _capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return SvgLoader
function SvgLoader.ctor(_capi) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function SvgLoader.DrawSvg(svgAsset, intoSurface, posx, posy, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param intoSurface ImageSurface
---@param matrix Matrix
---@param posx number
---@param posy number
---@param width? number
---@param height? number
---@param color? Nullable`1
function SvgLoader.DrawSvg(svgAsset, intoSurface, matrix, posx, posy, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param textureWidth number
---@param textureHeight number
---@param width? number
---@param height? number
---@param color? Nullable`1
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function SvgLoader.LoadSvg(svgAsset, textureWidth, textureHeight, width, height, color) end

---@param svgAsset IAsset Represents a loaded asset from the assets folder
---@param textureWidth number
---@param textureHeight number
---@param width? number
---@param height? number
---@param color? Nullable`1
---@return number
function SvgLoader.rasterizeSvg(svgAsset, textureWidth, textureHeight, width, height, color) end

---@return userdata
function SvgLoader.GetType() end

---@return string
function SvgLoader.ToString() end

---@param obj userdata
---@return boolean
function SvgLoader.Equals(obj) end

---@return number
function SvgLoader.GetHashCode() end


