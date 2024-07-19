---@meta

---@class GltfAnimationChannel
---@field Sampler number
---@field Target GltfAnimationChannelTarget
GltfAnimationChannel = {}

---@return GltfAnimationChannel
function GltfAnimationChannel.ctor() end

---@return number
function GltfAnimationChannel.get_Sampler() end

---@param value number
function GltfAnimationChannel.set_Sampler(value) end

---@return GltfAnimationChannelTarget
function GltfAnimationChannel.get_Target() end

---@param value GltfAnimationChannelTarget
function GltfAnimationChannel.set_Target(value) end

---@return userdata
function GltfAnimationChannel.GetType() end

---@return string
function GltfAnimationChannel.ToString() end

---@param obj userdata
---@return boolean
function GltfAnimationChannel.Equals(obj) end

---@return number
function GltfAnimationChannel.GetHashCode() end


