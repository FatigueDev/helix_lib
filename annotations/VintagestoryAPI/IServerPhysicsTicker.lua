---@meta

---@class IServerPhysicsTicker
---@field FlagDoneTick number
IServerPhysicsTicker = {}


---@return number
function IServerPhysicsTicker.get_FlagDoneTick() end

---@param elapsedMS number
function IServerPhysicsTicker.onPhysicsTickServer(elapsedMS) end

function IServerPhysicsTicker.AfterPhysicsTick() end


