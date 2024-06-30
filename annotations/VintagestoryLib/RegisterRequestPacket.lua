---@meta

---@class RegisterRequestPacket
---@field port number
---@field name string
---@field icon string
---@field playstyle PlaystylePacket
---@field maxPlayers number
---@field gameVersion string
---@field hasPassword boolean
---@field Mods ModPacket[]
---@field serverUrl string
---@field gameDescription string
---@field whitelisted boolean
RegisterRequestPacket = {}

---@return RegisterRequestPacket
function RegisterRequestPacket.ctor() end

---@return userdata
function RegisterRequestPacket.GetType() end

---@return string
function RegisterRequestPacket.ToString() end

---@param obj userdata
---@return boolean
function RegisterRequestPacket.Equals(obj) end

---@return number
function RegisterRequestPacket.GetHashCode() end


