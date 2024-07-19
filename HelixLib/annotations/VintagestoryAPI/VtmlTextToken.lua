---@meta

---@class VtmlTextToken: VtmlToken, VtmlToken
---@field StartPosition number
---@field Text string
VtmlTextToken = {}

---@return VtmlTextToken
function VtmlTextToken.ctor() end

---@return number
function VtmlTextToken.get_StartPosition() end

---@param value number
function VtmlTextToken.set_StartPosition(value) end

---@return userdata
function VtmlTextToken.GetType() end

---@return string
function VtmlTextToken.ToString() end

---@param obj userdata
---@return boolean
function VtmlTextToken.Equals(obj) end

---@return number
function VtmlTextToken.GetHashCode() end


