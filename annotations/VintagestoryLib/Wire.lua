---@meta

---@class Wire
---@field Varint number
---@field Fixed64 number
---@field LengthDelimited number
---@field Fixed32 number
Wire = {}

---@return Wire
function Wire.ctor() end

---@return userdata
function Wire.GetType() end

---@return string
function Wire.ToString() end

---@param obj userdata
---@return boolean
function Wire.Equals(obj) end

---@return number
function Wire.GetHashCode() end


