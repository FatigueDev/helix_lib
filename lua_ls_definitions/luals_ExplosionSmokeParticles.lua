---@meta ExplosionSmokeParticles
---@class ExplosionSmokeParticles: Object
---@field ctor fun(): ExplosionSmokeParticles
---@field get_Async fun(): boolean
---@field get_Bounciness fun(): Single
---@field set_Bounciness fun(value: Single): nil
---@field get_RandomVelocityChange fun(): boolean
---@field set_RandomVelocityChange fun(value: boolean): nil
---@field get_DieOnRainHeightmap fun(): boolean
---@field Init fun(api: ICoreAPI): nil
---@field AddBlock fun(pos: BlockPos): nil
---@field BeginParticle fun(): nil
---@field get_DieInAir fun(): boolean
---@field get_DieInLiquid fun(): boolean
---@field get_SwimOnLiquid fun(): boolean
---@field get_VertexFlags fun(): number
---@field get_GravityEffect fun(): Single
---@field get_TerrainCollision fun(): boolean
---@field get_LifeLength fun(): Single
---@field get_OpacityEvolve fun(): EvolvingNatFloat
---@field get_RedEvolve fun(): EvolvingNatFloat
---@field get_GreenEvolve fun(): EvolvingNatFloat
---@field get_BlueEvolve fun(): EvolvingNatFloat
---@field get_Pos fun(): Vec3d
---@field get_Quantity fun(): Single
---@field GetRgbaColor fun(capi: ICoreClientAPI): number
---@field get_Size fun(): Single
---@field get_SizeEvolve fun(): EvolvingNatFloat
---@field GetVelocity fun(pos: Vec3d): Vec3f
---@field get_VelocityEvolve fun(): EvolvingNatFloat[]
---@field get_ParticleModel fun(): EnumParticleModel
---@field get_SelfPropelled fun(): boolean
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader, resolver: IWorldAccessor): nil
---@field AddBlocks fun(explodedBlocks: table<any, any>): nil
---@field get_SecondarySpawnInterval fun(): Single
---@field get_SecondaryParticles fun(): IParticlePropertiesProvider[]
---@field get_DeathParticles fun(): IParticlePropertiesProvider[]
---@field PrepareForSecondarySpawn fun(particleInstance: ParticleBase): nil
---@field get_ParentVelocity fun(): Vec3f
---@field set_ParentVelocity fun(value: Vec3f): nil
---@field get_ParentVelocityWeight fun(): Single
---@field set_ParentVelocityWeight fun(value: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Async boolean
---@field Bounciness boolean
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field DieInAir boolean
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
---@field VertexFlags boolean
---@field GravityEffect boolean
---@field TerrainCollision boolean
---@field LifeLength boolean
---@field OpacityEvolve boolean
---@field RedEvolve boolean
---@field GreenEvolve boolean
---@field BlueEvolve boolean
---@field Pos boolean
---@field Quantity boolean
---@field Size boolean
---@field SizeEvolve boolean
---@field VelocityEvolve boolean
---@field ParticleModel boolean
---@field SelfPropelled boolean
---@field SecondarySpawnInterval boolean
---@field SecondaryParticles boolean
---@field DeathParticles boolean
---@field ParentVelocity boolean
---@field ParentVelocityWeight boolean
---@field basePos boolean
ExplosionSmokeParticles = {}