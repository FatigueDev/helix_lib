---@meta

---@class RenderHandler
---@field Renderer IRenderer
---@field ProfilingName string
RenderHandler = {}

---@return RenderHandler
function RenderHandler.ctor() end

---@return userdata
function RenderHandler.GetType() end

---@return string
function RenderHandler.ToString() end

---@param obj userdata
---@return boolean
function RenderHandler.Equals(obj) end

---@return number
function RenderHandler.GetHashCode() end


