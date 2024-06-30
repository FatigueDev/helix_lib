---@meta

---@class ExtraHandbookSection
---@field Title string
---@field Text string
---@field TextParts string
ExtraHandbookSection = {}

---@return ExtraHandbookSection
function ExtraHandbookSection.ctor() end

---@return userdata
function ExtraHandbookSection.GetType() end

---@return string
function ExtraHandbookSection.ToString() end

---@param obj userdata
---@return boolean
function ExtraHandbookSection.Equals(obj) end

---@return number
function ExtraHandbookSection.GetHashCode() end


