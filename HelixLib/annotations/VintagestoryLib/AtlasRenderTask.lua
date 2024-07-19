---@meta

---@class AtlasRenderTask
---@field Stack ItemStack
---@field Atlas ITextureAtlasAPI
---@field Color number
---@field Size number
---@field Scale number
---@field SepiaLevel number
---@field OnComplete function
AtlasRenderTask = {}

---@return AtlasRenderTask
function AtlasRenderTask.ctor() end

---@return userdata
function AtlasRenderTask.GetType() end

---@return string
function AtlasRenderTask.ToString() end

---@param obj userdata
---@return boolean
function AtlasRenderTask.Equals(obj) end

---@return number
function AtlasRenderTask.GetHashCode() end


