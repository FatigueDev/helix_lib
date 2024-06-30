---@meta

---@class AnimationTrigger
---@field OnControls EnumEntityActivity[]
---@field MatchExact boolean
---@field DefaultAnim boolean
AnimationTrigger = {}

---@return AnimationTrigger
function AnimationTrigger.ctor() end

---@return AnimationTrigger
function AnimationTrigger.Clone() end

---@return userdata
function AnimationTrigger.GetType() end

---@return string
function AnimationTrigger.ToString() end

---@param obj userdata
---@return boolean
function AnimationTrigger.Equals(obj) end

---@return number
function AnimationTrigger.GetHashCode() end


