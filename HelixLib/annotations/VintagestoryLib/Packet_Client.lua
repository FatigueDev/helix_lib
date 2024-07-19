---@meta

---@class Packet_Client
---@field LoginTokenQuery Packet_LoginTokenQuery
---@field Id number
---@field Identification Packet_ClientIdentification
---@field BlockPlaceOrBreak Packet_ClientBlockPlaceOrBreak
---@field Chatline Packet_ChatLine
---@field RequestJoin Packet_ClientRequestJoin
---@field PingReply Packet_ClientPingReply
---@field SpecialKey_ Packet_ClientSpecialKey
---@field SelectedHotbarSlot Packet_SelectedHotbarSlot
---@field Leave Packet_ClientLeave
---@field Query Packet_ClientServerQuery
---@field MoveItemstack Packet_MoveItemstack
---@field Flipitemstacks Packet_FlipItemstacks
---@field EntityInteraction Packet_EntityInteraction
---@field PlayerPosition Packet_PlayerPosition
---@field ActivateInventorySlot Packet_ActivateInventorySlot
---@field CreateItemstack Packet_CreateItemstack
---@field RequestModeChange Packet_PlayerMode
---@field MoveKeyChange Packet_MoveKeyChange
---@field BlockEntityPacket Packet_BlockEntityPacket
---@field EntityPacket Packet_EntityPacket
---@field CustomPacket Packet_CustomPacket
---@field HandInteraction Packet_ClientHandInteraction
---@field ToolMode Packet_ToolMode
---@field BlockDamage Packet_BlockDamage
---@field ClientPlaying Packet_ClientPlaying
---@field InvOpenedClosed Packet_InvOpenClose
---@field RuntimeSetting Packet_RuntimeSetting
---@field LoginTokenQueryFieldID number
---@field IdFieldID number
---@field IdentificationFieldID number
---@field BlockPlaceOrBreakFieldID number
---@field ChatlineFieldID number
---@field RequestJoinFieldID number
---@field PingReplyFieldID number
---@field SpecialKey_FieldID number
---@field SelectedHotbarSlotFieldID number
---@field LeaveFieldID number
---@field QueryFieldID number
---@field MoveItemstackFieldID number
---@field FlipitemstacksFieldID number
---@field EntityInteractionFieldID number
---@field PlayerPositionFieldID number
---@field ActivateInventorySlotFieldID number
---@field CreateItemstackFieldID number
---@field RequestModeChangeFieldID number
---@field MoveKeyChangeFieldID number
---@field BlockEntityPacketFieldID number
---@field EntityPacketFieldID number
---@field CustomPacketFieldID number
---@field HandInteractionFieldID number
---@field ToolModeFieldID number
---@field BlockDamageFieldID number
---@field ClientPlayingFieldID number
---@field InvOpenedClosedFieldID number
---@field RuntimeSettingFieldID number
Packet_Client = {}

---@return Packet_Client
function Packet_Client.ctor() end

---@param value Packet_LoginTokenQuery
function Packet_Client.SetLoginTokenQuery(value) end

---@param value number
function Packet_Client.SetId(value) end

---@param value Packet_ClientIdentification
function Packet_Client.SetIdentification(value) end

---@param value Packet_ClientBlockPlaceOrBreak
function Packet_Client.SetBlockPlaceOrBreak(value) end

---@param value Packet_ChatLine
function Packet_Client.SetChatline(value) end

---@param value Packet_ClientRequestJoin
function Packet_Client.SetRequestJoin(value) end

---@param value Packet_ClientPingReply
function Packet_Client.SetPingReply(value) end

---@param value Packet_ClientSpecialKey
function Packet_Client.SetSpecialKey_(value) end

---@param value Packet_SelectedHotbarSlot
function Packet_Client.SetSelectedHotbarSlot(value) end

---@param value Packet_ClientLeave
function Packet_Client.SetLeave(value) end

---@param value Packet_ClientServerQuery
function Packet_Client.SetQuery(value) end

---@param value Packet_MoveItemstack
function Packet_Client.SetMoveItemstack(value) end

---@param value Packet_FlipItemstacks
function Packet_Client.SetFlipitemstacks(value) end

---@param value Packet_EntityInteraction
function Packet_Client.SetEntityInteraction(value) end

---@param value Packet_PlayerPosition
function Packet_Client.SetPlayerPosition(value) end

---@param value Packet_ActivateInventorySlot
function Packet_Client.SetActivateInventorySlot(value) end

---@param value Packet_CreateItemstack
function Packet_Client.SetCreateItemstack(value) end

---@param value Packet_PlayerMode
function Packet_Client.SetRequestModeChange(value) end

---@param value Packet_MoveKeyChange
function Packet_Client.SetMoveKeyChange(value) end

---@param value Packet_BlockEntityPacket
function Packet_Client.SetBlockEntityPacket(value) end

---@param value Packet_EntityPacket
function Packet_Client.SetEntityPacket(value) end

---@param value Packet_CustomPacket
function Packet_Client.SetCustomPacket(value) end

---@param value Packet_ClientHandInteraction
function Packet_Client.SetHandInteraction(value) end

---@param value Packet_ToolMode
function Packet_Client.SetToolMode(value) end

---@param value Packet_BlockDamage
function Packet_Client.SetBlockDamage(value) end

---@param value Packet_ClientPlaying
function Packet_Client.SetClientPlaying(value) end

---@param value Packet_InvOpenClose
function Packet_Client.SetInvOpenedClosed(value) end

---@param value Packet_RuntimeSetting
function Packet_Client.SetRuntimeSetting(value) end

---@return userdata
function Packet_Client.GetType() end

---@return string
function Packet_Client.ToString() end

---@param obj userdata
---@return boolean
function Packet_Client.Equals(obj) end

---@return number
function Packet_Client.GetHashCode() end


