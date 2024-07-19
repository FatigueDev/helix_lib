---@meta

---@class StackMatrix4
---@field Top number
---@field Count number
StackMatrix4 = {}

---@param max? number
---@return StackMatrix4
function StackMatrix4.ctor(max) end

---@return number
function StackMatrix4.get_Top() end

---@return number
function StackMatrix4.get_Count() end

function StackMatrix4.PushIdentity() end

---@param p number
function StackMatrix4.Push(p) end

function StackMatrix4.Push() end

---@return number
function StackMatrix4.Pop() end

function StackMatrix4.Clear() end

---@param rad number
---@param x number
---@param y number
---@param z number
function StackMatrix4.Rotate(rad, x, y, z) end

---@param x number
---@param y number
---@param z number
function StackMatrix4.Translate(x, y, z) end

---@param x number
---@param y number
---@param z number
function StackMatrix4.Scale(x, y, z) end

---@param rotationOrigin number
function StackMatrix4.Translate(rotationOrigin) end

---@return userdata
function StackMatrix4.GetType() end

---@return string
function StackMatrix4.ToString() end

---@param obj userdata
---@return boolean
function StackMatrix4.Equals(obj) end

---@return number
function StackMatrix4.GetHashCode() end


