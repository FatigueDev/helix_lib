---@meta

---@class GltfAnimation
---@field Channels GltfAnimationChannel[]
---@field Samplers GltfAnimationChannel[]
GltfAnimation = {}

---@return GltfAnimation
function GltfAnimation.ctor() end

---@return GltfAnimationChannel[]
function GltfAnimation.get_Channels() end

---@param value GltfAnimationChannel[]
function GltfAnimation.set_Channels(value) end

---@return GltfAnimationChannel[]
function GltfAnimation.get_Samplers() end

---@param value GltfAnimationChannel[]
function GltfAnimation.set_Samplers(value) end

---@return userdata
function GltfAnimation.GetType() end

---@return string
function GltfAnimation.ToString() end

---@param obj userdata
---@return boolean
function GltfAnimation.Equals(obj) end

---@return number
function GltfAnimation.GetHashCode() end


