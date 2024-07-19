---@meta

-- Converts key code from OpenTK 4 to GlKeys
---@class KeyConverter
---@field NewKeysToGlKeys number
---@field GlKeysToNew number
KeyConverter = {}


---@return userdata
function KeyConverter.GetType() end

---@return string
function KeyConverter.ToString() end

---@param obj userdata
---@return boolean
function KeyConverter.Equals(obj) end

---@return number
function KeyConverter.GetHashCode() end


