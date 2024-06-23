---@meta IServerWorldAccessor
---@class IServerWorldAccessor
---@field get_LoadedEntities fun(): Concurrenttable<any, any>
---@field DespawnEntity fun(entity: Entity, reason: EntityDespawnData): nil
---@field CreateExplosion fun(pos: BlockPos, blastType: EnumBlastany, destructionRadius: Double, injureRadius: Double, blockDropChanceMultiplier: Single): nil
---@field get_TreeGenerators fun(): Orderedtable<any, any>
---@field get_RemappedEntities fun(): table<any, any>
---@field IsFullyLoadedChunk fun(pos: BlockPos): boolean
---@field AddPhysicsTick fun(entitybehavior: IServerPhysicsTicker): nil
---@field LoadedEntities Concurrenttable<any, any>
---@field TreeGenerators Concurrenttable<any, any>
---@field RemappedEntities Concurrenttable<any, any>
IServerWorldAccessor = {}