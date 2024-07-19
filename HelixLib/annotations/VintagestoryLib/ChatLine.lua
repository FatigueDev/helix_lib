---@meta

---@class ChatLine
---@field Text string
---@field PostedMs number
---@field TextColor number
---@field BackgroundColor number
ChatLine = {}


---@param text string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param msEllapsed number
---@return ChatLine
function ChatLine.Create(text, chatType, msEllapsed) end

---@return userdata
function ChatLine.GetType() end

---@return string
function ChatLine.ToString() end

---@param obj userdata
---@return boolean
function ChatLine.Equals(obj) end

---@return number
function ChatLine.GetHashCode() end


