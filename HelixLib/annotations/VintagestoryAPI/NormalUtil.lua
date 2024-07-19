---@meta

---@class NormalUtil
---@field NegBit number
---@field tenBitMask number
---@field nineBitMask number
---@field tenthBitMask number
NormalUtil = {}


---@param normal number
---@param toFill Vec4f&
function NormalUtil.FromPackedNormal(normal, toFill) end

---@param normal number
---@param toFill number
function NormalUtil.FromPackedNormal(normal, toFill) end

---@param normal Vec4f
---@return number
function NormalUtil.PackNormal(normal) end

---@param x number
---@param y number
---@param z number
---@return number
function NormalUtil.PackNormal(x, y, z) end

---@return userdata
function NormalUtil.GetType() end

---@return string
function NormalUtil.ToString() end

---@param obj userdata
---@return boolean
function NormalUtil.Equals(obj) end

---@return number
function NormalUtil.GetHashCode() end


