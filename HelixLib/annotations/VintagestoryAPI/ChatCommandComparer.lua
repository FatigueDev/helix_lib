---@meta

---@class ChatCommandComparer
---@field Comparer ChatCommandComparer
ChatCommandComparer = {}

---@return ChatCommandComparer
function ChatCommandComparer.ctor() end

---@return ChatCommandComparer
function ChatCommandComparer.get_Comparer() end

---@param x IChatCommand
---@param y IChatCommand
---@return boolean
function ChatCommandComparer.Equals(x, y) end

---@param obj IChatCommand
---@return number
function ChatCommandComparer.GetHashCode(obj) end

---@return userdata
function ChatCommandComparer.GetType() end

---@return string
function ChatCommandComparer.ToString() end

---@param obj userdata
---@return boolean
function ChatCommandComparer.Equals(obj) end

---@return number
function ChatCommandComparer.GetHashCode() end


