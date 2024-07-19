---@meta

---@class DecorUpdate
---@field OldDecorId number
---@field NewDecorId number
DecorUpdate = {}

---@return DecorUpdate
function DecorUpdate.ctor() end

---@return userdata
function DecorUpdate.GetType() end

---@return string
function DecorUpdate.ToString() end

---@param obj userdata
---@return boolean
function DecorUpdate.Equals(obj) end

---@return number
function DecorUpdate.GetHashCode() end


