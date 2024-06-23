---@meta IServerPhysicsTicker
---@class IServerPhysicsTicker
---@field get_FlagDoneTick fun(): number&
---@field onPhysicsTickServer fun(elapsedMS: Int64): nil
---@field AfterPhysicsTick fun(): nil
---@field FlagDoneTick number&
IServerPhysicsTicker = {}
