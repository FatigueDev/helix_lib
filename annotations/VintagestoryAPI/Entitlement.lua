---@meta

---@class Entitlement
---@field Code string
---@field Name string
Entitlement = {}

---@return Entitlement
function Entitlement.ctor() end

---@return userdata
function Entitlement.GetType() end

---@return string
function Entitlement.ToString() end

---@param obj userdata
---@return boolean
function Entitlement.Equals(obj) end

---@return number
function Entitlement.GetHashCode() end


