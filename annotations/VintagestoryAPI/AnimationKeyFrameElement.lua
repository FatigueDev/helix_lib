---@meta

---@class AnimationKeyFrameElement
---@field AnySet boolean
---@field PositionSet boolean
---@field StretchSet boolean
---@field RotationSet boolean
---@field OriginSet boolean
---@field OffsetX Nullable`1
---@field OffsetY Nullable`1
---@field OffsetZ Nullable`1
---@field StretchX Nullable`1
---@field StretchY Nullable`1
---@field StretchZ Nullable`1
---@field RotationX Nullable`1
---@field RotationY Nullable`1
---@field RotationZ Nullable`1
---@field OriginX Nullable`1
---@field OriginY Nullable`1
---@field OriginZ Nullable`1
---@field RotShortestDistanceX boolean
---@field RotShortestDistanceY boolean
---@field RotShortestDistanceZ boolean
---@field ForElement ShapeElement
AnimationKeyFrameElement = {}

---@return AnimationKeyFrameElement
function AnimationKeyFrameElement.ctor() end

---@return boolean
function AnimationKeyFrameElement.get_AnySet() end

---@return boolean
function AnimationKeyFrameElement.get_PositionSet() end

---@return boolean
function AnimationKeyFrameElement.get_StretchSet() end

---@return boolean
function AnimationKeyFrameElement.get_RotationSet() end

---@return boolean
function AnimationKeyFrameElement.get_OriginSet() end

---@return userdata
function AnimationKeyFrameElement.GetType() end

---@return string
function AnimationKeyFrameElement.ToString() end

---@param obj userdata
---@return boolean
function AnimationKeyFrameElement.Equals(obj) end

---@return number
function AnimationKeyFrameElement.GetHashCode() end


