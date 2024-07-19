---@meta

---@class Packet_ServerChunk
---@field Blocks number
---@field Light number
---@field LightSat number
---@field Liquids number
---@field LightPositions number
---@field LightPositionsCount number
---@field LightPositionsLength number
---@field X number
---@field Y number
---@field Z number
---@field Entities Packet_Entity[]
---@field EntitiesCount number
---@field EntitiesLength number
---@field BlockEntities Packet_BlockEntity[]
---@field BlockEntitiesCount number
---@field BlockEntitiesLength number
---@field Moddata number
---@field Empty number
---@field DecorsPos number
---@field DecorsPosCount number
---@field DecorsPosLength number
---@field DecorsIds number
---@field DecorsIdsCount number
---@field DecorsIdsLength number
---@field Compver number
---@field BlocksFieldID number
---@field LightFieldID number
---@field LightSatFieldID number
---@field LiquidsFieldID number
---@field LightPositionsFieldID number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field EntitiesFieldID number
---@field BlockEntitiesFieldID number
---@field ModdataFieldID number
---@field EmptyFieldID number
---@field DecorsPosFieldID number
---@field DecorsIdsFieldID number
---@field CompverFieldID number
Packet_ServerChunk = {}

---@return Packet_ServerChunk
function Packet_ServerChunk.ctor() end

---@param value number
function Packet_ServerChunk.SetBlocks(value) end

---@param value number
function Packet_ServerChunk.SetLight(value) end

---@param value number
function Packet_ServerChunk.SetLightSat(value) end

---@param value number
function Packet_ServerChunk.SetLiquids(value) end

---@return number
function Packet_ServerChunk.GetLightPositions() end

---@param value number
---@param count number
---@param length number
function Packet_ServerChunk.SetLightPositions(value, count, length) end

---@param value number
function Packet_ServerChunk.SetLightPositions(value) end

---@return number
function Packet_ServerChunk.GetLightPositionsCount() end

---@param value number
function Packet_ServerChunk.LightPositionsAdd(value) end

---@param value number
function Packet_ServerChunk.SetX(value) end

---@param value number
function Packet_ServerChunk.SetY(value) end

---@param value number
function Packet_ServerChunk.SetZ(value) end

---@return Packet_Entity[]
function Packet_ServerChunk.GetEntities() end

---@param value Packet_Entity[]
---@param count number
---@param length number
function Packet_ServerChunk.SetEntities(value, count, length) end

---@param value Packet_Entity[]
function Packet_ServerChunk.SetEntities(value) end

---@return number
function Packet_ServerChunk.GetEntitiesCount() end

---@param value Packet_Entity
function Packet_ServerChunk.EntitiesAdd(value) end

---@return Packet_BlockEntity[]
function Packet_ServerChunk.GetBlockEntities() end

---@param value Packet_BlockEntity[]
---@param count number
---@param length number
function Packet_ServerChunk.SetBlockEntities(value, count, length) end

---@param value Packet_BlockEntity[]
function Packet_ServerChunk.SetBlockEntities(value) end

---@return number
function Packet_ServerChunk.GetBlockEntitiesCount() end

---@param value Packet_BlockEntity
function Packet_ServerChunk.BlockEntitiesAdd(value) end

---@param value number
function Packet_ServerChunk.SetModdata(value) end

---@param value number
function Packet_ServerChunk.SetEmpty(value) end

---@return number
function Packet_ServerChunk.GetDecorsPos() end

---@param value number
---@param count number
---@param length number
function Packet_ServerChunk.SetDecorsPos(value, count, length) end

---@param value number
function Packet_ServerChunk.SetDecorsPos(value) end

---@return number
function Packet_ServerChunk.GetDecorsPosCount() end

---@param value number
function Packet_ServerChunk.DecorsPosAdd(value) end

---@return number
function Packet_ServerChunk.GetDecorsIds() end

---@param value number
---@param count number
---@param length number
function Packet_ServerChunk.SetDecorsIds(value, count, length) end

---@param value number
function Packet_ServerChunk.SetDecorsIds(value) end

---@return number
function Packet_ServerChunk.GetDecorsIdsCount() end

---@param value number
function Packet_ServerChunk.DecorsIdsAdd(value) end

---@param value number
function Packet_ServerChunk.SetCompver(value) end

---@return userdata
function Packet_ServerChunk.GetType() end

---@return string
function Packet_ServerChunk.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerChunk.Equals(obj) end

---@return number
function Packet_ServerChunk.GetHashCode() end


