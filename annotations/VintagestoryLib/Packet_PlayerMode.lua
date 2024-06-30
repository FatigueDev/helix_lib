---@meta

---@class Packet_PlayerMode
---@field PlayerUID string
---@field GameMode number
---@field MoveSpeed number
---@field FreeMove number
---@field NoClip number
---@field ViewDistance number
---@field PickingRange number
---@field FreeMovePlaneLock number
---@field ImmersiveFpMode number
---@field RenderMetaBlocks number
---@field PlayerUIDFieldID number
---@field GameModeFieldID number
---@field MoveSpeedFieldID number
---@field FreeMoveFieldID number
---@field NoClipFieldID number
---@field ViewDistanceFieldID number
---@field PickingRangeFieldID number
---@field FreeMovePlaneLockFieldID number
---@field ImmersiveFpModeFieldID number
---@field RenderMetaBlocksFieldID number
Packet_PlayerMode = {}

---@return Packet_PlayerMode
function Packet_PlayerMode.ctor() end

---@param value string
function Packet_PlayerMode.SetPlayerUID(value) end

---@param value number
function Packet_PlayerMode.SetGameMode(value) end

---@param value number
function Packet_PlayerMode.SetMoveSpeed(value) end

---@param value number
function Packet_PlayerMode.SetFreeMove(value) end

---@param value number
function Packet_PlayerMode.SetNoClip(value) end

---@param value number
function Packet_PlayerMode.SetViewDistance(value) end

---@param value number
function Packet_PlayerMode.SetPickingRange(value) end

---@param value number
function Packet_PlayerMode.SetFreeMovePlaneLock(value) end

---@param value number
function Packet_PlayerMode.SetImmersiveFpMode(value) end

---@param value number
function Packet_PlayerMode.SetRenderMetaBlocks(value) end

---@return userdata
function Packet_PlayerMode.GetType() end

---@return string
function Packet_PlayerMode.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerMode.Equals(obj) end

---@return number
function Packet_PlayerMode.GetHashCode() end


