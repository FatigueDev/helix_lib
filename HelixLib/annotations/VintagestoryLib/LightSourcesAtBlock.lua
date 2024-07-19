---@meta

---@class LightSourcesAtBlock
---@field LastBrightness number
---@field lightHsvs number
---@field lightCount number
LightSourcesAtBlock = {}

---@return LightSourcesAtBlock
function LightSourcesAtBlock.ctor() end

---@return number
function LightSourcesAtBlock.get_LastBrightness() end

---@param h number
---@param s number
---@param v number
function LightSourcesAtBlock.AddHsv(h, s, v) end

---@return userdata
function LightSourcesAtBlock.GetType() end

---@return string
function LightSourcesAtBlock.ToString() end

---@param obj userdata
---@return boolean
function LightSourcesAtBlock.Equals(obj) end

---@return number
function LightSourcesAtBlock.GetHashCode() end


