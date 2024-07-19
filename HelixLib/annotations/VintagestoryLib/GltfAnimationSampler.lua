---@meta

---@class GltfAnimationSampler
---@field Input number
---@field Interpolation EnumGltfAnimationSamplerInterpolation
---@field Output number
GltfAnimationSampler = {}

---@return GltfAnimationSampler
function GltfAnimationSampler.ctor() end

---@return number
function GltfAnimationSampler.get_Input() end

---@param value number
function GltfAnimationSampler.set_Input(value) end

---@return EnumGltfAnimationSamplerInterpolation
function GltfAnimationSampler.get_Interpolation() end

---@param value EnumGltfAnimationSamplerInterpolation
function GltfAnimationSampler.set_Interpolation(value) end

---@return number
function GltfAnimationSampler.get_Output() end

---@param value number
function GltfAnimationSampler.set_Output(value) end

---@return userdata
function GltfAnimationSampler.GetType() end

---@return string
function GltfAnimationSampler.ToString() end

---@param obj userdata
---@return boolean
function GltfAnimationSampler.Equals(obj) end

---@return number
function GltfAnimationSampler.GetHashCode() end


