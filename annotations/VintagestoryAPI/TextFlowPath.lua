---@meta

---@class TextFlowPath
---@field X1 number
---@field Y1 number
---@field X2 number
---@field Y2 number
TextFlowPath = {}

---@return TextFlowPath
function TextFlowPath.ctor() end
---@param boxWidth number
---@return TextFlowPath
function TextFlowPath.ctor(boxWidth) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return TextFlowPath
function TextFlowPath.ctor(x1, y1, x2, y2) end

---@return userdata
function TextFlowPath.GetType() end

---@return string
function TextFlowPath.ToString() end

---@param obj userdata
---@return boolean
function TextFlowPath.Equals(obj) end

---@return number
function TextFlowPath.GetHashCode() end


