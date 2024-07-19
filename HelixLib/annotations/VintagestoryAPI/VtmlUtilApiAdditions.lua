---@meta

---@class VtmlUtilApiAdditions
VtmlUtilApiAdditions = {}


---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param tagName string
---@param converterHandler Tag2RichTextDelegate A tag parser
function VtmlUtilApiAdditions.RegisterVtmlTagConverter(api, tagName, converterHandler) end

---@return userdata
function VtmlUtilApiAdditions.GetType() end

---@return string
function VtmlUtilApiAdditions.ToString() end

---@param obj userdata
---@return boolean
function VtmlUtilApiAdditions.Equals(obj) end

---@return number
function VtmlUtilApiAdditions.GetHashCode() end


