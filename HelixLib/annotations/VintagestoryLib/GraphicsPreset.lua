---@meta

---@class GraphicsPreset
---@field PresetId number
---@field Langcode string
---@field ViewDistance number
---@field SmoothLight boolean
---@field FXAA boolean
---@field SSAO number
---@field WavingFoliage boolean
---@field LiquidFoamEffect boolean
---@field Bloom boolean
---@field GodRays boolean
---@field ShadowMapQuality number
---@field ParticleLevel number
---@field DynamicLights number
---@field Resolution number
---@field MaxFps number
---@field Presets table
---@field Minimum GraphicsPreset
---@field Pathetic GraphicsPreset
---@field UltraLow GraphicsPreset
---@field VeryLow GraphicsPreset
---@field Low GraphicsPreset
---@field Medium GraphicsPreset
---@field High GraphicsPreset
---@field VeryHigh GraphicsPreset
---@field UltraHigh GraphicsPreset
---@field Glorious GraphicsPreset
---@field Maximum GraphicsPreset
---@field Custom GraphicsPreset
GraphicsPreset = {}

---@param langcode string
---@return GraphicsPreset
function GraphicsPreset.ctor(langcode) end

---@return userdata
function GraphicsPreset.GetType() end

---@return string
function GraphicsPreset.ToString() end

---@param obj userdata
---@return boolean
function GraphicsPreset.Equals(obj) end

---@return number
function GraphicsPreset.GetHashCode() end


