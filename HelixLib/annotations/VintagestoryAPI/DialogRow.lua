---@meta

---@class DialogRow
---@field Elements DialogElement[]
---@field BottomPadding number
---@field TopPadding number
DialogRow = {}

---@return DialogRow
function DialogRow.ctor() end
---@param elements DialogElement[]
---@return DialogRow
function DialogRow.ctor(elements) end

---@return userdata
function DialogRow.GetType() end

---@return string
function DialogRow.ToString() end

---@param obj userdata
---@return boolean
function DialogRow.Equals(obj) end

---@return number
function DialogRow.GetHashCode() end


