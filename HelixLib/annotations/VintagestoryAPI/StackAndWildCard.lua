---@meta

---@class StackAndWildCard
---@field Stack ItemStack
---@field WildCard AssetLocation
StackAndWildCard = {}

---@return StackAndWildCard
function StackAndWildCard.ctor() end

---@return userdata
function StackAndWildCard.GetType() end

---@return string
function StackAndWildCard.ToString() end

---@param obj userdata
---@return boolean
function StackAndWildCard.Equals(obj) end

---@return number
function StackAndWildCard.GetHashCode() end


