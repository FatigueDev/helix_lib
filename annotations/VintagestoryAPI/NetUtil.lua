---@meta

---@class NetUtil
NetUtil = {}


---@param url string
function NetUtil.OpenUrlInBrowser(url) end

---@param ip string
---@return boolean
function NetUtil.IsPrivateIp(ip) end

---@param uri string
---@param error string
---@return UriInfo
function NetUtil.getUriInfo(uri, error) end

---@return userdata
function NetUtil.GetType() end

---@return string
function NetUtil.ToString() end

---@param obj userdata
---@return boolean
function NetUtil.Equals(obj) end

---@return number
function NetUtil.GetHashCode() end


