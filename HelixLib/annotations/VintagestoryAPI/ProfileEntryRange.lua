---@meta

---@class ProfileEntryRange
---@field Code string
---@field Start number
---@field LastMark number
---@field CallCount number
---@field ElapsedTicks number
---@field Marks table
---@field ChildRanges table
---@field ParentRange ProfileEntryRange
ProfileEntryRange = {}

---@return ProfileEntryRange
function ProfileEntryRange.ctor() end

---@return userdata
function ProfileEntryRange.GetType() end

---@return string
function ProfileEntryRange.ToString() end

---@param obj userdata
---@return boolean
function ProfileEntryRange.Equals(obj) end

---@return number
function ProfileEntryRange.GetHashCode() end


