---@meta

---@class ProfileEntry
---@field ElapsedTicks number
---@field CallCount number
ProfileEntry = {}

---@return ProfileEntry
function ProfileEntry.ctor() end
---@param elaTicks number
---@param callCount number
---@return ProfileEntry
function ProfileEntry.ctor(elaTicks, callCount) end

---@return userdata
function ProfileEntry.GetType() end

---@return string
function ProfileEntry.ToString() end

---@param obj userdata
---@return boolean
function ProfileEntry.Equals(obj) end

---@return number
function ProfileEntry.GetHashCode() end


