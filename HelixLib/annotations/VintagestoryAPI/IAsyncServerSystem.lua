---@meta

-- Mods can create server threads to carry out an asynchronous process, by implementing this interface and calling IServerApi.AddServerThread()
---@class IAsyncServerSystem
IAsyncServerSystem = {}


---@return number
function IAsyncServerSystem.OffThreadInterval() end

function IAsyncServerSystem.OnSeparateThreadTick() end

function IAsyncServerSystem.ThreadDispose() end


