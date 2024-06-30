---@meta

---@class Unproject
Unproject = {}

---@return Unproject
function Unproject.ctor() end

---@param winX number
---@param winY number
---@param winZ number
---@param model number
---@param proj number
---@param view number
---@param objPos number
---@return boolean
function Unproject.UnProject(winX, winY, winZ, model, proj, view, objPos) end

---@return userdata
function Unproject.GetType() end

---@return string
function Unproject.ToString() end

---@param obj userdata
---@return boolean
function Unproject.Equals(obj) end

---@return number
function Unproject.GetHashCode() end


