---@meta

-- Many utility methods and fields for working with colors
---@class ColorUtil
---@field HueQuantities number
---@field SatQuantities number
---@field BrightQuantities number
---@field WhiteRgbVec Vec3f White opaque color as normalized float values (0..1)
---@field WhiteArgbVec Vec4f White opaque color as normalized float values (0..1)
---@field WhiteArgbFloat number White opaque color as normalized float values (0..1)
---@field WhiteArgbDouble number White opaque color as normalized float values (0..1)
---@field WhiteArgbBytes number White opaque argb color as bytes (0..255)
---@field WhiteAhsvBytes number White opaque ahsv color as bytes (0..255)
---@field WhiteAhsl number White opaque AHSV color
---@field BlackArgb number Black opaque rgb color
---@field BlackRgbVec Vec3f Black opaque rgb color
---@field BlackArgbVec Vec4f Black opaque rgb color
---@field BlackArgbDouble number White opaque color as normalized float values (0..1)
---@field HueBits number Amount of bits per block that are available to store the hue value
---@field SatBits number Amount of bits per block that are available to store the saturation value
---@field BrightBits number Amount of bits per block that are available to store the brightness value
---@field HueMul number
---@field SatMul number
---@field BrightMul number
---@field OpaqueAlpha number 255 << 24
---@field ClearAlpha number ~(255 << 24)
---@field WhiteArgb number White opaque argb color
---@field LightUtil nil Converts HSV (extracted from light and lightSat) to RGBA
ColorUtil = {}

---@return ColorUtil
function ColorUtil.ctor() end

-- Reverses the RGB channels, but leaves alpha untouched. Basically turns RGBA into BGRA and vice versa
---@param color number
---@return number
function ColorUtil.ReverseColorBytes(color) end

-- Reverses the RGB channels, but leaves alpha untouched. Basically turns RGBA into BGRA and vice versa
---@param color number
---@return number
function ColorUtil.ReverseColorBytes(color) end

-- Splits up a 32bit int color into 4 1 byte components, in BGRA order (Alpha channel at the highest 8 bits)
---@param color number
---@return number
function ColorUtil.ToBGRABytes(color) end

-- Splits up a 32bit int color into 4 1 byte components, in RGBA order
---@param color number
---@return number
function ColorUtil.ToRGBABytes(color) end

-- Returns a 4 element rgb float with values between 0..1
---@param color number
---@return number
function ColorUtil.ToRGBAFloats(color) end

---@param color number
---@param outVal Vec3f&
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ColorUtil.ToRGBVec3f(color, outVal) end

---@param color number
---@param outVal Vec4f&
---@return Vec4f
function ColorUtil.ToRGBAVec4f(color, outVal) end

---@param channels number
---@return number
function ColorUtil.ColorFromRgba(channels) end

---@param colorRel Vec4f
---@return number
function ColorUtil.ColorFromRgba(colorRel) end

-- Care: the returned value is in true RGBA order, not BGRA as used for example by VS particle system.  Therefore, depending on use, calling code may need to exchange the r and b parameters to see correct colors rendered in-game.
---@param r number
---@param g number
---@param b number
---@param a number
---@return number
function ColorUtil.ColorFromRgba(r, g, b, a) end

---@param rgba number
---@return number
function ColorUtil.FromRGBADoubles(rgba) end

-- Returns a 4 element rgb double with values between 0..1
---@param color number
---@return number
function ColorUtil.ToRGBADoubles(color) end

---@param col number
---@return number
function ColorUtil.ColorFromRgba(col) end

-- Multiplies two colors together: c=(a*b)/255
---@param color1 number
---@param color2 number
---@return number
function ColorUtil.ColorMultiply(color1, color2) end

-- Multiplies two colors together c=(a*b)/255
---@param color number
---@param color2 number
---@return number
function ColorUtil.ColorMultiplyEach(color, color2) end

-- Multiplies a float value to the rgb color channels, leaves alpha channel unchanged
---@param color number
---@param multiplier number
---@return number
function ColorUtil.ColorMultiply3(color, multiplier) end

-- Multiplies a float value to the rgb color channels, leaves alpha channel unchanged. Makes sure the multiplied value stays within the 0..255 range
---@param color number
---@param multiplier number
---@return number
function ColorUtil.ColorMultiply3Clamped(color, multiplier) end

-- Multiplies a float value to the rgb color channels
---@param color number
---@param redMul number
---@param greenMul number
---@param blueMul number
---@param alphaMul number
---@return number
function ColorUtil.ColorMultiply4(color, redMul, greenMul, blueMul, alphaMul) end

-- Multiplies a float value to every color channel including the alpha component.
---@param color number
---@param multiplier number
---@return number
function ColorUtil.ColorMultiply4(color, multiplier) end

-- Averages several colors together in RGB space
---@param colors number
---@param weights number
---@return number
function ColorUtil.ColorAverage(colors, weights) end

-- Overlays rgb2 over rgb1
-- When c2weight = 0 resulting color is color1, when c2weight = 1 then resulting color is color2
-- Resulting color alpha value is 100% color1 alpha
---@param rgb1 number
---@param rgb2 number
---@param c2weight number
---@return number
function ColorUtil.ColorOverlay(rgb1, rgb2, c2weight) end

-- Overlays rgb1 on top of rgb2, based on their alpha values
---@param rgb1 number
---@param rgb2 number
---@return number
function ColorUtil.ColorOver(rgb1, rgb2) end

-- Combines two HSV colors by converting them to rgb then back to hsv. Uses the brightness as a weighting factor. Also leaves the brightness at the max of both hsv colors.
---@param h1 number
---@param s1 number
---@param v1 number
---@param h2 number
---@param s2 number
---@param v2 number
---@return number
function ColorUtil.ColorCombineHSV(h1, s1, v1, h2, s2, v2) end

-- Removes HSV2 from HSV1 by converting them to rgb then back to hsv. Uses the brightness as a weighting factor. Leaves brightness unchanged.
---@param h1 number
---@param s1 number
---@param v1 number
---@param h2 number
---@param s2 number
---@param v2 number
---@return number
function ColorUtil.ColorSubstractHSV(h1, s1, v1, h2, s2, v2) end

-- Pack the 4 color components into a single ARGB 32bit int
---@param a number
---@param r number
---@param g number
---@param b number
---@return number
function ColorUtil.ToRgba(a, r, g, b) end

-- Returns alpha value of given color
---@param color number
---@return number
function ColorUtil.ColorA(color) end

-- Returns red value of given color
---@param color number
---@return number
function ColorUtil.ColorR(color) end

-- Returns green value of given color
---@param color number
---@return number
function ColorUtil.ColorG(color) end

-- Returns blue value of given color
---@param color number
---@return number
function ColorUtil.ColorB(color) end

-- Returns human a readable string of given color
---@param color number
---@return string
function ColorUtil.ColorToString(color) end

-- Turn a string hex color (with #) into a single int
---@param hex string
---@return number
function ColorUtil.Hex2Int(hex) end

-- Turn a color int into its string hex version, including preceeding #
---@param color number
---@return string
function ColorUtil.Int2Hex(color) end

---@param color number
---@return string
function ColorUtil.Int2HexBGR(color) end

-- Turn a color int into its string hex version, including preceeding #, including alpha channel
---@param color number
---@return string
function ColorUtil.Int2HexRgba(color) end

---@param color number
---@return string
function ColorUtil.Doubles2Hex(color) end

-- Parses a hex string as an rgb(a) color and returns an array of colors normalized fom 0..1 for use with Cairo. E.g. turns #FF0000 into double[1, 0, 0, 1] and #00FF00CC into double[0, 1, 0, 0.8]
---@param hex string
---@return number
function ColorUtil.Hex2Doubles(hex) end

---@param hex string
---@param opacityRel number
---@return number
function ColorUtil.Hex2Doubles(hex, opacityRel) end

-- Converts given RGB values into it's respective HSV Representation (all values in range of 0-255)
-- In the result, V is the MOST significant byte
---@param r number
---@param g number
---@param b number
---@return number
function ColorUtil.Rgb2Hsv(r, g, b) end

-- Converts given RGB value into it's respective HSV Representation (all values in range of 0-255)
-- In the parameter, R is the most significant byte i.e. this is for RGB
-- In the result, V is the LEAST significant byte
---@param rgb number
---@return number
function ColorUtil.Rgb2HSv(rgb) end

-- Converts given RGB values into it's respective HSV Representation (all values in range of 0-255)
---@param r number
---@param g number
---@param b number
---@return number
function ColorUtil.RgbToHsvInts(r, g, b) end

-- Converts given HSV value into it's respective RGB Representation (all values in range of 0-255)
-- R is the most significant byte i.e. this is RGB
---@param hsv number
---@return number
function ColorUtil.Hsv2Rgb(hsv) end

-- Converts given HSV values into it's respective RGB Representation (all values in range of 0-255)
-- R is the most significant byte i.e. this is RGB
---@param h number
---@param s number
---@param v number
---@return number
function ColorUtil.HsvToRgb(h, s, v) end

-- Returns a fully opaque gray color with given brightness
---@param brightness number
---@return number
function ColorUtil.GrayscaleColor(brightness) end

-- Converts given HSB values into it's respective ARGB Representation (all values in range of 0-255, alpha always 255)
-- R is the LEAST significant byte i.e. the result is BGR
---@param h number
---@param s number
---@param v number
---@return number
function ColorUtil.HsvToRgba(h, s, v) end

-- Converts given HSV values into its respective ARGB Representation (all values in range of 0-255)
-- R is the LEAST significant byte i.e. the result is BGR
---@param h number
---@param s number
---@param v number
---@param a number
---@return number
function ColorUtil.HsvToRgba(h, s, v, a) end

-- Converts given HSV values into its respective RGB representation (all values in range of 0-255)
-- R is the first byte in the resulting array
---@param h number
---@param s number
---@param v number
---@return number
function ColorUtil.Hsv2RgbInts(h, s, v) end

-- Converts given HSVA values into its respective RGBA Representation (all values in range of 0-255)
-- R is the first byte in the resulting array
---@param hsva number
---@return number
function ColorUtil.HSVa2RGBaBytes(hsva) end

---@param temperature number
---@return number
function ColorUtil.getIncandescenceColor(temperature) end

---@param temperature number
---@return number
function ColorUtil.GetIncandescenceColorAsColor4f(temperature) end

---@return userdata
function ColorUtil.GetType() end

---@return string
function ColorUtil.ToString() end

---@param obj userdata
---@return boolean
function ColorUtil.Equals(obj) end

---@return number
function ColorUtil.GetHashCode() end


