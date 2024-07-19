---@meta

---@class DialogElement
---@field Code string
---@field Width number
---@field Height number
---@field PaddingLeft number
---@field Type EnumDialogElementType
---@field Mode EnumDialogElementMode
---@field Label string
---@field Icon string
---@field Text string
---@field Tooltip string
---@field FontSize number
---@field Icons string
---@field Values string
---@field Names string
---@field Tooltips string
---@field MinValue number
---@field MaxValue number
---@field Step number
---@field Param string To hold generic data
DialogElement = {}

---@return DialogElement
function DialogElement.ctor() end

---@return userdata
function DialogElement.GetType() end

---@return string
function DialogElement.ToString() end

---@param obj userdata
---@return boolean
function DialogElement.Equals(obj) end

---@return number
function DialogElement.GetHashCode() end


