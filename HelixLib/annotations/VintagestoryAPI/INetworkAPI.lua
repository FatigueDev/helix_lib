---@meta

---@class INetworkAPI
INetworkAPI = {}


--          Supplies you with your very own and personal network channel with which you can send packets to the server. Use the same channelName on the client and server to have them link up.
--          
---@param channelName string
---@return INetworkChannel
function INetworkAPI.RegisterChannel(channelName) end

-- Returns a previoulsy registered channeled, null otherwise
---@param channelName string
---@return INetworkChannel
function INetworkAPI.GetChannel(channelName) end


