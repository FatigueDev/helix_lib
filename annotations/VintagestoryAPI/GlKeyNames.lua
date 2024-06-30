---@meta

---@class GlKeyNames
GlKeyNames = {}


-- Converts the given key to a string.
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@return string
function GlKeyNames.ToString(key) end

-- Gets the string the key would produce upon pressing it without considering any modifiers (but single keys get converted to uppercase).
-- So GlKeys.W on QWERTY Keyboard layout returns W, GlKeys.Space returns Space etc.
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@return string
function GlKeyNames.GetKeyName(key) end

-- Returns the printable character for a key. Does return null on none printable keys like Enter
---@param key number
---@return string
function GlKeyNames.GetPrintableChar(key) end

---@return userdata
function GlKeyNames.GetType() end

---@return string
function GlKeyNames.ToString() end

---@param obj userdata
---@return boolean
function GlKeyNames.Equals(obj) end

---@return number
function GlKeyNames.GetHashCode() end


