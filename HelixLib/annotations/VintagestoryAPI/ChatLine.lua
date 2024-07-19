---@meta

-- an internal control containing the properties of a chat message.
---@class ChatLine
---@field ByPlayerUID string The UID of the player who sent the message.
---@field Message string The message that was sent.
---@field ChatType EnumChatType The type of chat the message was sent as.
ChatLine = {}

---@return ChatLine
function ChatLine.ctor() end

---@return userdata
function ChatLine.GetType() end

---@return string
function ChatLine.ToString() end

---@param obj userdata
---@return boolean
function ChatLine.Equals(obj) end

---@return number
function ChatLine.GetHashCode() end


