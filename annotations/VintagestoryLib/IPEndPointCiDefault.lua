---@meta

---@class IPEndPointCiDefault: IPEndPointCi, IPEndPointCi
IPEndPointCiDefault = {}

---@return IPEndPointCiDefault
function IPEndPointCiDefault.ctor() end

---@param address_ string
---@return IPEndPointCiDefault
function IPEndPointCiDefault.Create(address_) end

---@return string
function IPEndPointCiDefault.AddressToString() end

---@return userdata
function IPEndPointCiDefault.GetType() end

---@return string
function IPEndPointCiDefault.ToString() end

---@param obj userdata
---@return boolean
function IPEndPointCiDefault.Equals(obj) end

---@return number
function IPEndPointCiDefault.GetHashCode() end


