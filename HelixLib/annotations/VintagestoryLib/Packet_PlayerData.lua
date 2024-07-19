---@meta

---@class Packet_PlayerData
---@field ClientId number
---@field EntityId number
---@field GameMode number
---@field MoveSpeed number
---@field FreeMove number
---@field NoClip number
---@field InventoryContents Packet_InventoryContents[]
---@field InventoryContentsCount number
---@field InventoryContentsLength number
---@field PlayerUID string
---@field PickingRange number
---@field FreeMovePlaneLock number
---@field AreaSelectionMode number
---@field Privileges string
---@field PrivilegesCount number
---@field PrivilegesLength number
---@field PlayerName string
---@field Entitlements string
---@field HotbarSlotId number
---@field Deaths number
---@field Spawnx number
---@field Spawny number
---@field Spawnz number
---@field RoleCode string
---@field ClientIdFieldID number
---@field EntityIdFieldID number
---@field GameModeFieldID number
---@field MoveSpeedFieldID number
---@field FreeMoveFieldID number
---@field NoClipFieldID number
---@field InventoryContentsFieldID number
---@field PlayerUIDFieldID number
---@field PickingRangeFieldID number
---@field FreeMovePlaneLockFieldID number
---@field AreaSelectionModeFieldID number
---@field PrivilegesFieldID number
---@field PlayerNameFieldID number
---@field EntitlementsFieldID number
---@field HotbarSlotIdFieldID number
---@field DeathsFieldID number
---@field SpawnxFieldID number
---@field SpawnyFieldID number
---@field SpawnzFieldID number
---@field RoleCodeFieldID number
Packet_PlayerData = {}

---@return Packet_PlayerData
function Packet_PlayerData.ctor() end

---@param value number
function Packet_PlayerData.SetClientId(value) end

---@param value number
function Packet_PlayerData.SetEntityId(value) end

---@param value number
function Packet_PlayerData.SetGameMode(value) end

---@param value number
function Packet_PlayerData.SetMoveSpeed(value) end

---@param value number
function Packet_PlayerData.SetFreeMove(value) end

---@param value number
function Packet_PlayerData.SetNoClip(value) end

---@return Packet_InventoryContents[]
function Packet_PlayerData.GetInventoryContents() end

---@param value Packet_InventoryContents[]
---@param count number
---@param length number
function Packet_PlayerData.SetInventoryContents(value, count, length) end

---@param value Packet_InventoryContents[]
function Packet_PlayerData.SetInventoryContents(value) end

---@return number
function Packet_PlayerData.GetInventoryContentsCount() end

---@param value Packet_InventoryContents
function Packet_PlayerData.InventoryContentsAdd(value) end

---@param value string
function Packet_PlayerData.SetPlayerUID(value) end

---@param value number
function Packet_PlayerData.SetPickingRange(value) end

---@param value number
function Packet_PlayerData.SetFreeMovePlaneLock(value) end

---@param value number
function Packet_PlayerData.SetAreaSelectionMode(value) end

---@return string
function Packet_PlayerData.GetPrivileges() end

---@param value string
---@param count number
---@param length number
function Packet_PlayerData.SetPrivileges(value, count, length) end

---@param value string
function Packet_PlayerData.SetPrivileges(value) end

---@return number
function Packet_PlayerData.GetPrivilegesCount() end

---@param value string
function Packet_PlayerData.PrivilegesAdd(value) end

---@param value string
function Packet_PlayerData.SetPlayerName(value) end

---@param value string
function Packet_PlayerData.SetEntitlements(value) end

---@param value number
function Packet_PlayerData.SetHotbarSlotId(value) end

---@param value number
function Packet_PlayerData.SetDeaths(value) end

---@param value number
function Packet_PlayerData.SetSpawnx(value) end

---@param value number
function Packet_PlayerData.SetSpawny(value) end

---@param value number
function Packet_PlayerData.SetSpawnz(value) end

---@param value string
function Packet_PlayerData.SetRoleCode(value) end

---@return userdata
function Packet_PlayerData.GetType() end

---@return string
function Packet_PlayerData.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerData.Equals(obj) end

---@return number
function Packet_PlayerData.GetHashCode() end


