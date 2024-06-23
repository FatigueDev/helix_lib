---@meta IWorldGenBlockAccessor
---@class IWorldGenBlockAccessor
---@field get_WorldgenWorldAccessor fun(): IServerWorldAccessor
---@field ScheduleBlockUpdate fun(pos: BlockPos): nil
---@field ScheduleBlockLightUpdate fun(pos: BlockPos, oldBlockid: number, newBlockId: number): nil
---@field RunScheduledBlockLightUpdates fun(): nil
---@field AddEntity fun(entity: Entity): nil
---@field BeginColumn fun(): nil
---@field WorldgenWorldAccessor IServerWorldAccessor
IWorldGenBlockAccessor = {}
