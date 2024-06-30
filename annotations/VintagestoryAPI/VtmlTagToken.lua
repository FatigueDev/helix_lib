---@meta

---@class VtmlTagToken: VtmlToken, VtmlToken
---@field ChildElements table
---@field Name string Name of this tag
---@field Attributes table Collection of attribute names and values for this tag
---@field ContentText string
---@field StartPosition number
VtmlTagToken = {}

---@return VtmlTagToken
function VtmlTagToken.ctor() end

---@return table
function VtmlTagToken.get_ChildElements() end

---@param value table
function VtmlTagToken.set_ChildElements(value) end

---@return string
function VtmlTagToken.get_Name() end

---@param value string
function VtmlTagToken.set_Name(value) end

---@return table
function VtmlTagToken.get_Attributes() end

---@param value table
function VtmlTagToken.set_Attributes(value) end

---@return string
function VtmlTagToken.get_ContentText() end

---@return number
function VtmlTagToken.get_StartPosition() end

---@param value number
function VtmlTagToken.set_StartPosition(value) end

---@return userdata
function VtmlTagToken.GetType() end

---@return string
function VtmlTagToken.ToString() end

---@param obj userdata
---@return boolean
function VtmlTagToken.Equals(obj) end

---@return number
function VtmlTagToken.GetHashCode() end


