---@meta

---@class MainThreadAction
MainThreadAction = {}

---@param game ClientMain
---@param action Func`1
---@param label string
---@return MainThreadAction
function MainThreadAction.ctor(game, action, label) end

function MainThreadAction.Enqueue() end

---@param otherAction function
function MainThreadAction.Enqueue(otherAction) end

---@return number
function MainThreadAction.Invoke() end

---@return userdata
function MainThreadAction.GetType() end

---@return string
function MainThreadAction.ToString() end

---@param obj userdata
---@return boolean
function MainThreadAction.Equals(obj) end

---@return number
function MainThreadAction.GetHashCode() end


