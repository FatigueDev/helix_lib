---@meta IAsyncParticleManager
---@class IAsyncParticleManager
---@field Spawn fun(particleProperties: IParticlePropertiesProvider): number
---@field get_BlockAccess fun(): IBlockAccessor
---@field ParticlesAlive fun(model: EnumParticleModel): number
---@field BlockAccess IBlockAccessor
IAsyncParticleManager = {}
