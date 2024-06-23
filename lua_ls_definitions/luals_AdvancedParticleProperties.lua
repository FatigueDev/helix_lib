---@meta AdvancedParticleProperties
---@class AdvancedParticleProperties: Object
---@field ctor fun(): AdvancedParticleProperties
---@field get_Async fun(): boolean
---@field get_RandomVelocityChange fun(): boolean
---@field set_RandomVelocityChange fun(value: boolean): nil
---@field get_DieOnRainHeightmap fun(): boolean
---@field set_DieOnRainHeightmap fun(value: boolean): nil
---@field get_SecondaryParticles fun(): AdvancedParticleProperties[]
---@field set_SecondaryParticles fun(value: AdvancedParticleProperties[]): nil
---@field get_DeathParticles fun(): AdvancedParticleProperties[]
---@field set_DeathParticles fun(value: AdvancedParticleProperties[]): nil
---@field get_SecondarySpawnInterval fun(): NatFloat
---@field set_SecondarySpawnInterval fun(value: NatFloat): nil
---@field get_Bounciness fun(): Single
---@field set_Bounciness fun(value: Single): nil
---@field get_DieInAir fun(): boolean
---@field set_DieInAir fun(value: boolean): nil
---@field get_DieInLiquid fun(): boolean
---@field set_DieInLiquid fun(value: boolean): nil
---@field get_SwimOnLiquid fun(): boolean
---@field set_SwimOnLiquid fun(value: boolean): nil
---@field get_ColorByBlock fun(): boolean
---@field set_ColorByBlock fun(value: boolean): nil
---@field get_OpacityEvolve fun(): EvolvingNatFloat
---@field set_OpacityEvolve fun(value: EvolvingNatFloat): nil
---@field get_RedEvolve fun(): EvolvingNatFloat
---@field set_RedEvolve fun(value: EvolvingNatFloat): nil
---@field get_GreenEvolve fun(): EvolvingNatFloat
---@field set_GreenEvolve fun(value: EvolvingNatFloat): nil
---@field get_BlueEvolve fun(): EvolvingNatFloat
---@field set_BlueEvolve fun(value: EvolvingNatFloat): nil
---@field get_GravityEffect fun(): NatFloat
---@field set_GravityEffect fun(value: NatFloat): nil
---@field get_LifeLength fun(): NatFloat
---@field set_LifeLength fun(value: NatFloat): nil
---@field get_Quantity fun(): NatFloat
---@field set_Quantity fun(value: NatFloat): nil
---@field get_Size fun(): NatFloat
---@field set_Size fun(value: NatFloat): nil
---@field get_SizeEvolve fun(): EvolvingNatFloat
---@field set_SizeEvolve fun(value: EvolvingNatFloat): nil
---@field get_Velocity fun(): NatFloat[]
---@field set_Velocity fun(value: NatFloat[]): nil
---@field get_VelocityEvolve fun(): EvolvingNatFloat[]
---@field set_VelocityEvolve fun(value: EvolvingNatFloat[]): nil
---@field get_ParticleModel fun(): EnumParticleModel
---@field set_ParticleModel fun(value: EnumParticleModel): nil
---@field get_VertexFlags fun(): number
---@field set_VertexFlags fun(value: number): nil
---@field get_SelfPropelled fun(): boolean
---@field set_SelfPropelled fun(value: boolean): nil
---@field get_TerrainCollision fun(): boolean
---@field set_TerrainCollision fun(value: boolean): nil
---@field get_WindAffectednes fun(): Single
---@field set_WindAffectednes fun(value: Single): nil
---@field Init fun(api: ICoreAPI): nil
---@field GetRgbaColor fun(capi: ICoreClientAPI): number
---@field get_Pos fun(): Vec3d
---@field GetVelocity fun(pos: Vec3d): Vec3f
---@field get_ParentVelocity fun(): Vec3f
---@field set_ParentVelocity fun(value: Vec3f): nil
---@field get_WindAffectednesAtPos fun(): Single
---@field set_WindAffectednesAtPos fun(value: Single): nil
---@field get_ParentVelocityWeight fun(): Single
---@field set_ParentVelocityWeight fun(value: Single): nil
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader, resolver: IWorldAccessor): nil
---@field createFromBytes fun(reader: BinaryReader, resolver: IWorldAccessor): AdvancedParticleProperties
---@field Clone fun(): AdvancedParticleProperties
---@field BeginParticle fun(): nil
---@field PrepareForSecondarySpawn fun(particleInstance: ParticleBase): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Async boolean
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field SecondaryParticles boolean
---@field DeathParticles boolean
---@field SecondarySpawnInterval boolean
---@field Bounciness boolean
---@field DieInAir boolean
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
---@field ColorByBlock boolean
---@field OpacityEvolve boolean
---@field RedEvolve boolean
---@field GreenEvolve boolean
---@field BlueEvolve boolean
---@field GravityEffect boolean
---@field LifeLength boolean
---@field Quantity boolean
---@field Size boolean
---@field SizeEvolve boolean
---@field Velocity boolean
---@field VelocityEvolve boolean
---@field ParticleModel boolean
---@field VertexFlags boolean
---@field SelfPropelled boolean
---@field TerrainCollision boolean
---@field WindAffectednes boolean
---@field Pos boolean
---@field ParentVelocity boolean
---@field WindAffectednesAtPos boolean
---@field ParentVelocityWeight boolean
---@field HsvaColor boolean
---@field PosOffset boolean
---@field basePos boolean
---@field baseVelocity boolean
---@field block boolean
---@field Color boolean
AdvancedParticleProperties = {}