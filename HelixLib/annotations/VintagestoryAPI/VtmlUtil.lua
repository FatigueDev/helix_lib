---@meta

---@class VtmlUtil
---@field TagConverters table You can register your own tag converters here
VtmlUtil = {}

---@return VtmlUtil
function VtmlUtil.ctor() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param vtmlCode string
---@param baseFont CairoFont Represent a font with sizing and styling for use in rendering text
---@param didClickLink? function
---@return RichTextComponentBase[]
function VtmlUtil.Richtextify(capi, vtmlCode, baseFont, didClickLink) end

---@param colorText string
---@param color number
---@return boolean
function VtmlUtil.parseHexColor(colorText, color) end

---@param color number
---@return string
function VtmlUtil.toHexColor(color) end

---@return userdata
function VtmlUtil.GetType() end

---@return string
function VtmlUtil.ToString() end

---@param obj userdata
---@return boolean
function VtmlUtil.Equals(obj) end

---@return number
function VtmlUtil.GetHashCode() end


