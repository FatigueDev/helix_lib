---@meta

---@class StringUtil
StringUtil = {}


---@param str string
---@return number
function StringUtil.GetNonRandomizedHashCode(str) end

-- IMPORTANT!   This method should be used for every IndexOf operation in our code (except possibly in localised output to the user). This is important in order to avoid any
-- culture-specific different results even when indexing GLSL shader code or other code strings, etc., or other strings in English, when the current culture is a different language
-- (Known issue in the Thai language which has no spaces and treats punctuation marks as invisible, see https://github.com/dotnet/runtime/issues/59120)
-- See also: https://learn.microsoft.com/en-us/dotnet/standard/base-types/best-practices-strings
---@param a string
---@param b string
---@return number
function StringUtil.IndexOfOrdinal(a, b) end

-- IMPORTANT!   This method should be used for every StartsWith operation in our code (except possibly in localised output to the user). This is important in order to avoid any
-- culture-specific different results even when examining strings in English, when the user machine's current culture is a different language
-- (Known issue in the Thai language which has no spaces and treats punctuation marks as invisible, see https://github.com/dotnet/runtime/issues/59120)
-- See also: https://learn.microsoft.com/en-us/dotnet/standard/base-types/best-practices-strings
---@param a string
---@param b string
---@return boolean
function StringUtil.StartsWithOrdinal(a, b) end

-- IMPORTANT!   This method should be used for every EndsWith operation in our code (except possibly in localised output to the user). This is important in order to avoid any
-- culture-specific different results even when examining strings in English, when the user machine's current culture is a different language
-- (Known issue in the Thai language which has no spaces and treats punctuation marks as invisible, see https://github.com/dotnet/runtime/issues/59120)
-- See also: https://learn.microsoft.com/en-us/dotnet/standard/base-types/best-practices-strings
---@param a string
---@param b string
---@return boolean
function StringUtil.EndsWithOrdinal(a, b) end

-- This should be used for every string comparison when ordering strings (except possibly in localised output to the user) in order to avoid any
-- culture specific string comparison issues in certain languages (worst in the Thai language which has no spaces and treats punctuation marks as invisible)
-- See also: https://learn.microsoft.com/en-us/dotnet/standard/base-types/best-practices-strings
---@param a string
---@param b string
---@return number
function StringUtil.CompareOrdinal(a, b) end

-- Convert the first character to an uppercase one
---@param text string
---@return string
function StringUtil.UcFirst(text) end

---@param text string
---@param defaultValue? boolean
---@return boolean
function StringUtil.ToBool(text, defaultValue) end

---@param text string
---@return string
function StringUtil.RemoveFileEnding(text) end

---@param text string
---@param defaultValue? number
---@return number
function StringUtil.ToInt(text, defaultValue) end

---@param text string
---@param defaultValue? number
---@return number
function StringUtil.ToLong(text, defaultValue) end

---@param text string
---@param defaultValue? number
---@return number
function StringUtil.ToFloat(text, defaultValue) end

---@param text string
---@param defaultValue? number
---@return number
function StringUtil.ToDouble(text, defaultValue) end

---@param text string
---@param defaultValue? Nullable`1
---@return Nullable`1
function StringUtil.ToDoubleOrNull(text, defaultValue) end

---@param text string
---@param defaultValue? Nullable`1
---@return Nullable`1
function StringUtil.ToFloatOrNull(text, defaultValue) end

---@param text string
---@param c string
---@return number
function StringUtil.CountChars(text, c) end

---@param value string
---@param reference string
---@return boolean
function StringUtil.ContainsFast(value, reference) end

---@param value string
---@param reference string
---@return boolean
function StringUtil.ContainsFast(value, reference) end

---@param value string
---@param reference string
---@return boolean
function StringUtil.StartsWithFast(value, reference) end

---@param value string
---@param reference string
---@param offset number
---@return boolean
function StringUtil.StartsWithFast(value, reference, offset) end

---@param value string
---@param reference string
---@return boolean
function StringUtil.EqualsFast(value, reference) end

---@param value string
---@param reference string
---@param len number
---@return boolean
function StringUtil.FastStartsWith(value, reference, len) end

---@param stIn string
---@return string
function StringUtil.RemoveDiacritics(stIn) end

---@return userdata
function StringUtil.GetType() end

---@return string
function StringUtil.ToString() end

---@param obj userdata
---@return boolean
function StringUtil.Equals(obj) end

---@return number
function StringUtil.GetHashCode() end


