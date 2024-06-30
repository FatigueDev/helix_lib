---@meta

---@class Punishment
Punishment = {}

---@param duration TimeSpan
---@return Punishment
function Punishment.ctor(duration) end
---@return Punishment
function Punishment.ctor() end

---@return boolean
function Punishment.Active() end

---@return userdata
function Punishment.GetType() end

---@return string
function Punishment.ToString() end

---@param obj userdata
---@return boolean
function Punishment.Equals(obj) end

---@return number
function Punishment.GetHashCode() end


