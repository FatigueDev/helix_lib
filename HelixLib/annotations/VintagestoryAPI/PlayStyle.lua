---@meta

---@class PlayStyle
---@field Code string
---@field PlayListCode string
---@field LangCode string
---@field ListOrder number
---@field Mods string
---@field WorldType string
---@field WorldConfig JsonObject
PlayStyle = {}

---@return PlayStyle
function PlayStyle.ctor() end

---@return userdata
function PlayStyle.GetType() end

---@return string
function PlayStyle.ToString() end

---@param obj userdata
---@return boolean
function PlayStyle.Equals(obj) end

---@return number
function PlayStyle.GetHashCode() end


