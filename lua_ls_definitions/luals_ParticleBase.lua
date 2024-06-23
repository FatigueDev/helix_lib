---@meta ParticleBase
---@class ParticleBase: Object
---@field TickFixedStep fun(dt: Single, api: ICoreClientAPI, physicsSim: ParticlePhysics): nil
---@field TickNow fun(dt: Single, physicsdt: Single, api: ICoreClientAPI, physicsSim: ParticlePhysics): nil
---@field UpdateBuffers fun(buffer: MeshData, cameraPos: Vec3d, posPosition: number&, rgbaPosition: number&, flagPosition: number&): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ParticleBase = {}
