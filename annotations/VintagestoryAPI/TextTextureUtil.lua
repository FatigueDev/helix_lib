---@meta

---@class TextTextureUtil
TextTextureUtil = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return TextTextureUtil
function TextTextureUtil.ctor(capi) end

-- Takes a string of text and applies a texture to it.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param width number
---@param height number
---@param background? TextBackground
---@param orientation? EnumTextOrientation
---@param demulAlpha? boolean
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextTextureUtil.GenTextTexture(text, font, width, height, background, orientation, demulAlpha) end

---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param width number
---@param height number
---@param loadedTexture LoadedTexture&
---@param background? TextBackground
---@param orientation? EnumTextOrientation
---@param demulAlpha? boolean
function TextTextureUtil.GenOrUpdateTextTexture(text, font, width, height, loadedTexture, background, orientation, demulAlpha) end

-- Takes a string of text and applies a texture to it.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param width number
---@param height number
---@param background? TextBackground
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextTextureUtil.GenTextTexture(text, font, width, height, background) end

-- Takes a string of text and applies a texture to it.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param background? TextBackground
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextTextureUtil.GenTextTexture(text, font, background) end

---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param loadedTexture LoadedTexture&
---@param background? TextBackground
function TextTextureUtil.GenOrUpdateTextTexture(text, font, loadedTexture, background) end

-- Generates an unscaled text texture.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param background? TextBackground
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextTextureUtil.GenUnscaledTextTexture(text, font, background) end

-- Takes a string of text and applies a texture to it.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param maxWidth number
---@param background? TextBackground
---@param orientation? EnumTextOrientation
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextTextureUtil.GenTextTexture(text, font, maxWidth, background, orientation) end

---@return userdata
function TextTextureUtil.GetType() end

---@return string
function TextTextureUtil.ToString() end

---@param obj userdata
---@return boolean
function TextTextureUtil.Equals(obj) end

---@return number
function TextTextureUtil.GetHashCode() end


