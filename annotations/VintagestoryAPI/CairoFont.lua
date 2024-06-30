---@meta

-- Represent a font with sizing and styling for use in rendering text
---@class CairoFont: FontConfig, IDisposable, FontConfig
---@field RenderTwice boolean Whether or not the font is rendered twice.
---@field LineHeightMultiplier number
---@field Slant FontSlant
---@field Orientation EnumTextOrientation
---@field FontMeasuringContext Context The static Context for all Cairo Fonts.
---@field UnscaledFontsize number The size of the font before scaling is applied.
---@field Fontname string The name of the font.
---@field FontWeight FontWeight The weight of the font.
---@field Color number The color of the font.
---@field StrokeColor number The color of the font outline.
---@field StrokeWidth number The thickness of the outline.
CairoFont = {}

---@return CairoFont
function CairoFont.ctor() end
---@param config FontConfig
---@return CairoFont
function CairoFont.ctor(config) end
---@param unscaledFontSize number
---@param fontName string
---@return CairoFont
function CairoFont.ctor(unscaledFontSize, fontName) end
---@param unscaledFontSize number
---@param fontName string
---@param color number
---@param strokeColor? number
---@return CairoFont
function CairoFont.ctor(unscaledFontSize, fontName, color, strokeColor) end

---@param lineHeightMul number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithLineHeightMultiplier(lineHeightMul) end

---@param color number
---@param width number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithStroke(color, width) end

-- Adjust font size so that it fits given bounds
---@param text string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param onlyShrink? boolean
function CairoFont.AutoFontSize(text, bounds, onlyShrink) end

-- Adjust the bounds so that it fits given text in one line
---@param text string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param onlyGrow? boolean
function CairoFont.AutoBoxSize(text, bounds, onlyGrow) end

-- Sets the color of the CairoFont.
---@param color number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithColor(color) end

-- Adds a weight to the font.
---@param weight FontWeight
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithWeight(weight) end

-- Sets the font to render twice.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithRenderTwice() end

---@param slant FontSlant
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithSlant(slant) end

---@param fontname string
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithFont(fontname) end

-- Sets up the context. Must be executed in the main thread, as it is not thread safe.
---@param ctx Context
function CairoFont.SetupContext(ctx) end

-- Gets the font's extents.
---@return FontExtents
function CairoFont.GetFontExtents() end

-- Gets the extents of the text.
---@param text string
---@return TextExtents
function CairoFont.GetTextExtents(text) end

-- Clone function.  Creates a duplicate of this Cairofont.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.Clone() end

-- Sets the base size of the CairoFont.
---@param fontSize number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithFontSize(fontSize) end

-- Creates a Button Text preset.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.ButtonText() end

-- Creates a text preset for when the button is pressed.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.ButtonPressedText() end

---@param orientation EnumTextOrientation
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WithOrientation(orientation) end

-- Creates a text preset for text input fields.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.TextInput() end

-- Creates a text oreset for smaller text input fields.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.SmallTextInput() end

-- Creates a white text for medium dialog.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WhiteMediumText() end

-- Creates a white text for smallish dialogs.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WhiteSmallishText() end

-- Creates a white text for smallish dialogs, using the specified base font
---@param baseFont string
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WhiteSmallishText(baseFont) end

-- Creates a white text for small dialogs.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WhiteSmallText() end

-- Creates a white text for details.
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function CairoFont.WhiteDetailText() end

function CairoFont.Dispose() end

---@return userdata
function CairoFont.GetType() end

---@return string
function CairoFont.ToString() end

---@param obj userdata
---@return boolean
function CairoFont.Equals(obj) end

---@return number
function CairoFont.GetHashCode() end


