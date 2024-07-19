---@meta

---@class GltfAnimationChannelTarget
---@field Node number
---@field Path EnumGltfAnimationChannelTargetPath
GltfAnimationChannelTarget = {}

---@return GltfAnimationChannelTarget
function GltfAnimationChannelTarget.ctor() end

---@return number
function GltfAnimationChannelTarget.get_Node() end

---@param value number
function GltfAnimationChannelTarget.set_Node(value) end

---@return EnumGltfAnimationChannelTargetPath
function GltfAnimationChannelTarget.get_Path() end

---@param value EnumGltfAnimationChannelTargetPath
function GltfAnimationChannelTarget.set_Path(value) end

---@return userdata
function GltfAnimationChannelTarget.GetType() end

---@return string
function GltfAnimationChannelTarget.ToString() end

---@param obj userdata
---@return boolean
function GltfAnimationChannelTarget.Equals(obj) end

---@return number
function GltfAnimationChannelTarget.GetHashCode() end


