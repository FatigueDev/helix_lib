---@meta

---@class BaseServerChatCommandDelegateProvider:  LegacyServerChatCommand
---@field syntax string
BaseServerChatCommandDelegateProvider = {}

---@param server ServerMain
---@return BaseServerChatCommandDelegateProvider
function BaseServerChatCommandDelegateProvider.ctor(server) end

---@return string
function BaseServerChatCommandDelegateProvider.get_syntax() end

---@param value string
function BaseServerChatCommandDelegateProvider.set_syntax(value) end

---@return ServerChatCommandDelegate
function BaseServerChatCommandDelegateProvider.GetDelegate() end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@return ConnectedClient
function BaseServerChatCommandDelegateProvider.GetClient(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function BaseServerChatCommandDelegateProvider.Handle(player, groupId, args) end

---@return userdata
function BaseServerChatCommandDelegateProvider.GetType() end

---@return string
function BaseServerChatCommandDelegateProvider.ToString() end

---@param obj userdata
---@return boolean
function BaseServerChatCommandDelegateProvider.Equals(obj) end

---@return number
function BaseServerChatCommandDelegateProvider.GetHashCode() end


