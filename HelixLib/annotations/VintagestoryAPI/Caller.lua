---@meta

---@class Caller
---@field Player IPlayer
---@field Entity Entity
---@field Type EnumCallerType
---@field CallerPrivileges string
---@field CallerRole string
---@field FromChatGroupId number
---@field Pos Vec3d
Caller = {}

---@return Caller
function Caller.ctor() end

---@return IPlayer # Represents a player
function Caller.get_Player() end

---@param value IPlayer Represents a player
function Caller.set_Player(value) end

---@return Entity # The basic class for all entities in the game
function Caller.get_Entity() end

---@param value Entity The basic class for all entities in the game
function Caller.set_Entity(value) end

---@param privilege string
---@return boolean
function Caller.HasPrivilege(privilege) end

---@param sapi ICoreServerAPI The core api implemented by the server. The main interface for accessing the server. Contains all sub components and some miscellaneous methods.
---@return IPlayerRole
function Caller.GetRole(sapi) end

---@return string
function Caller.GetName() end

---@return userdata
function Caller.GetType() end

---@return string
function Caller.ToString() end

---@param obj userdata
---@return boolean
function Caller.Equals(obj) end

---@return number
function Caller.GetHashCode() end


