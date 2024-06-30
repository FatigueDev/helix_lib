---@meta

---@class VtmlToken
---@field StartPosition number
VtmlToken = {}

---@return VtmlToken
function VtmlToken.ctor() end

---@return number
function VtmlToken.get_StartPosition() end

---@param value number
function VtmlToken.set_StartPosition(value) end

---@return userdata
function VtmlToken.GetType() end

---@return string
function VtmlToken.ToString() end

---@param obj userdata
---@return boolean
function VtmlToken.Equals(obj) end

---@return number
function VtmlToken.GetHashCode() end


