---@meta FastParticlePool
---@class FastParticlePool: Object
---@field ctor fun(poolSize: number, createParticle: CreateParticleDelegate): FastParticlePool
---@field Kill fun(elem: ParticleBase): nil
---@field ReviveOne fun(): ParticleBase
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
FastParticlePool = {}
