---@meta

---@class RenderList
---@field Renderers table
RenderList = {}

---@return RenderList
function RenderList.ctor() end

---@return userdata
function RenderList.GetType() end

---@return string
function RenderList.ToString() end

---@param obj userdata
---@return boolean
function RenderList.Equals(obj) end

---@return number
function RenderList.GetHashCode() end


