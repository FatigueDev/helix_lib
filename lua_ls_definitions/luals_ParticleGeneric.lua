---@meta ParticleGeneric
---@class ParticleGeneric: ParticleBase
---@field ctor fun(): ParticleGeneric
---@field TickNow fun(lifedt: Single, pdt: Single, api: ICoreClientAPI, physicsSim: ParticlePhysics): nil
---@field UpdateBuffers fun(buffer: MeshData, cameraPos: Vec3d, posPosition: number&, rgbaPosition: number&, flagPosition: number&): nil
---@field Spawned fun(physicsSim: ParticlePhysics): nil
---@field TickFixedStep fun(dt: Single, api: ICoreClientAPI, physicsSim: ParticlePhysics): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ParticleGeneric = {}
