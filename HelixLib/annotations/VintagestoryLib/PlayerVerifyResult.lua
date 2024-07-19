---@meta

---@class PlayerVerifyResult
---@field Packet Packet_ClientIdentification
---@field Clientid number
---@field ServerResponse EnumServerResponse
PlayerVerifyResult = {}

---@return PlayerVerifyResult
function PlayerVerifyResult.ctor() end

---@return userdata
function PlayerVerifyResult.GetType() end

---@return string
function PlayerVerifyResult.ToString() end

---@param obj userdata
---@return boolean
function PlayerVerifyResult.Equals(obj) end

---@return number
function PlayerVerifyResult.GetHashCode() end


