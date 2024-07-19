---@meta

---@class GuiTab
---@field DataInt number
---@field Name string
---@field PaddingTop number
---@field Active boolean
GuiTab = {}

---@return GuiTab
function GuiTab.ctor() end

---@return userdata
function GuiTab.GetType() end

---@return string
function GuiTab.ToString() end

---@param obj userdata
---@return boolean
function GuiTab.Equals(obj) end

---@return number
function GuiTab.GetHashCode() end


