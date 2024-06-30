---@meta

-- The position of an element.
---@class ElementPose
---@field ForElement ShapeElement The element this positioning is for.
---@field AnimModelMatrix number The model matrix of this element.
---@field ChildElementPoses table
---@field degOffX number
---@field degOffY number
---@field degOffZ number
---@field degX number
---@field degY number
---@field degZ number
---@field scaleX number
---@field scaleY number
---@field scaleZ number
---@field translateX number
---@field translateY number
---@field translateZ number
---@field RotShortestDistanceX boolean
---@field RotShortestDistanceY boolean
---@field RotShortestDistanceZ boolean
ElementPose = {}

---@return ElementPose
function ElementPose.ctor() end

function ElementPose.Clear() end

---@param tf ElementPose The position of an element.
---@param tfNext ElementPose The position of an element.
---@param l number
---@param weight number
function ElementPose.Add(tf, tfNext, l, weight) end

---@return string
function ElementPose.ToString() end

---@return userdata
function ElementPose.GetType() end

---@param obj userdata
---@return boolean
function ElementPose.Equals(obj) end

---@return number
function ElementPose.GetHashCode() end


