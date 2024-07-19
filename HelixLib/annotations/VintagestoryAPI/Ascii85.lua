---@meta

-- Converts between binary data and an Ascii85-encoded string.
---@class Ascii85
Ascii85 = {}


-- Encodes the specified byte array in Ascii85.
---@param bytes number
---@return string
function Ascii85.Encode(bytes) end

-- Decodes the specified Ascii85 string into the corresponding byte array.
---@param encoded string
---@return number
function Ascii85.Decode(encoded) end

---@return userdata
function Ascii85.GetType() end

---@return string
function Ascii85.ToString() end

---@param obj userdata
---@return boolean
function Ascii85.Equals(obj) end

---@return number
function Ascii85.GetHashCode() end


