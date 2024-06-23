---@meta Entity
---@class Entity: RegistryObject
---@field ctor fun(): Entity
---@field add_OnInitialized fun(value: Action): nil
---@field remove_OnInitialized fun(value: Action): nil
---@field get_IsCreature fun(): boolean
---@field get_AnimManager fun(): IAnimationManager
---@field set_AnimManager fun(value: IAnimationManager): nil
---@field get_IsOnFire fun(): boolean
---@field set_IsOnFire fun(value: boolean): nil
---@field get_Properties fun(): EntityProperties
---@field get_SidedProperties fun(): EntitySidedProperties
---@field get_IsInteractable fun(): boolean
---@field get_SwimmingOffsetY fun(): Double
---@field get_Collided fun(): boolean
---@field get_SidedPos fun(): EntityPos
---@field get_LocalEyePos fun(): Vec3d
---@field set_LocalEyePos fun(value: Vec3d): nil
---@field get_ApplyGravity fun(): boolean
---@field get_MaterialDensity fun(): Single
---@field get_LightHsv fun(): number[]
---@field set_LightHsv fun(value: number[]): nil
---@field get_ShouldDespawn fun(): boolean
---@field get_StoreWithChunk fun(): boolean
---@field get_AlwaysActive fun(): boolean
---@field get_Alive fun(): boolean
---@field set_Alive fun(value: boolean): nil
---@field get_IdleSoundChanceModifier fun(): Single
---@field set_IdleSoundChanceModifier fun(value: Single): nil
---@field get_RenderColor fun(): number
---@field get_LadderFixDelta fun(): Double
---@field OnHurt fun(dmgSource: DamageSource, damage: Single): nil
---@field Initialize fun(properties: EntityProperties, api: ICoreAPI, InChunkIndex3d: Int64): nil
---@field AfterInitialized fun(onFirstSpawn: boolean): nil
---@field TryGiveItemStack fun(itemstack: ItemStack): boolean
---@field GetDrops fun(world: IWorldAccessor, pos: BlockPos, byPlayer: IPlayer): ItemStack[]
---@field TeleportToDouble fun(x: Double, y: Double, z: Double, onTeleported: Action): nil
---@field TeleportTo fun(x: number, y: number, z: number): nil
---@overload fun(position: Vec3d): nil
---@overload fun(position: BlockPos): nil
---@overload fun(position: EntityPos, onTeleported: Action): nil
---@field ReceiveDamage fun(damageSource: DamageSource, damage: Single): boolean
---@field ShouldReceiveDamage fun(damageSource: DamageSource, damage: Single): boolean
---@field OnGameTick fun(dt: Single): nil
---@field OnAsyncParticleTick fun(dt: Single, manager: IAsyncParticleManager): nil
---@field Ignite fun(): nil
---@field OnTesselation fun(entityShape: Shape&, shapePathForLogging: string): nil
---@field OnFallToGround fun(motionY: Double): nil
---@field OnCollided fun(): nil
---@field OnCollideWithLiquid fun(): nil
---@field OnEntityLoaded fun(): nil
---@field OnEntitySpawn fun(): nil
---@field OnEntityDespawn fun(despawn: EntityDespawnData): nil
---@field OnExitedLiquid fun(): nil
---@field OnInteract fun(byEntity: EntityAgent, itemslot: ItemSlot, hitPosition: Vec3d, mode: EnumInteractMode): nil
---@field GetInteractionHelp fun(world: IClientWorldAccessor, es: EntitySelection, player: IClientPlayer): WorldInteraction[]
---@field OnReceivedServerPos fun(isTeleport: boolean): nil
---@field OnReceivedClientPacket fun(player: IServerPlayer, packetid: number, data: number[]): nil
---@field OnReceivedServerPacket fun(packetid: number, data: number[]): nil
---@field OnReceivedServerAnimations fun(activeAnimations: number[], activeAnimationsCount: number, activeAnimationSpeeds: Single[]): nil
---@field OnCollected fun(byEntity: Entity): ItemStack
---@field OnStateChanged fun(beforeState: EnumEntityState): nil
---@field SetCollisionBox fun(length: Single, height: Single): nil
---@field SetSelectionBox fun(length: Single, height: Single): nil
---@field AddBehavior fun(behavior: EntityBehavior): nil
---@field RemoveBehavior fun(behavior: EntityBehavior): nil
---@field HasBehavior fun(behaviorName: string): boolean
---@overload fun(): boolean
---@field GetBehavior fun(name: string): EntityBehavior
---@overload fun(): T
---@field IsActivityRunning fun(key: string): boolean
---@field RemainingActivityTime fun(key: string): number
---@field SetActivityRunning fun(key: string, milliseconds: number): nil
---@field UpdateDebugAttributes fun(): nil
---@field FromBytes fun(reader: BinaryReader, isSync: boolean, serversideRemaps: table<any, any>): nil
---@overload fun(reader: BinaryReader, isSync: boolean): nil
---@field ToBytes fun(writer: BinaryWriter, forClient: boolean): nil
---@field Revive fun(): nil
---@field Die fun(reason: EnumDespawnReason, damageSourceForDeath: DamageSource): nil
---@field PlayEntitySound fun(type: string, dualCallByPlayer: IPlayer, randomizePitch: boolean, range: Single): nil
---@field CanCollect fun(byEntity: Entity): boolean
---@field Notify fun(key: string, data: table): nil
---@field WillExport fun(startPos: BlockPos): nil
---@field DidImportOrExport fun(startPos: BlockPos): nil
---@field OnStoreCollectibleMappings fun(blockIdMapping: table<any, any>, itemIdMapping: table<any, any>): nil
---@field OnLoadCollectibleMappings fun(worldForNewMappings: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>, schematicSeed: number): nil
---@overload fun(worldForNewMappings: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>, schematicSeed: number, resolveImports: boolean): nil
---@field GetName fun(): string
---@field GetInfoText fun(): string
---@field StartAnimation fun(code: string): nil
---@field StopAnimation fun(code: string): nil
---@field CodeWithPath fun(path: string): AssetLocation
---@field CodeWithoutParts fun(componentsToRemove: number): string
---@field CodeEndWithoutParts fun(componentsToRemove: number): string
---@field CodeWithParts fun(components: string[]): AssetLocation
---@overload fun(component: string): AssetLocation
---@field CodeWithVariant fun(type: string, value: string): AssetLocation
---@field CodeWithVariants fun(valuesByType: table<any, any>): AssetLocation
---@overload fun(types: string[], values: string[]): AssetLocation
---@field CodeWithPart fun(part: string, atPosition: number): AssetLocation
---@field LastCodePart fun(posFromRight: number): string
---@field FirstCodePart fun(posFromLeft: number): string
---@field WildCardMatch fun(wildcards: AssetLocation[]): boolean
---@overload fun(wildCard: AssetLocation): boolean
---@overload fun(wildcards: string[]): boolean
---@overload fun(wildCard: string): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field IsCreature boolean
---@field AnimManager boolean
---@field IsOnFire boolean
---@field Properties boolean
---@field SidedProperties boolean
---@field IsInteractable boolean
---@field SwimmingOffsetY boolean
---@field Collided boolean
---@field SidedPos boolean
---@field LocalEyePos boolean
---@field ApplyGravity boolean
---@field MaterialDensity boolean
---@field LightHsv boolean
---@field ShouldDespawn boolean
---@field StoreWithChunk boolean
---@field AlwaysActive boolean
---@field Alive boolean
---@field IdleSoundChanceModifier boolean
---@field RenderColor boolean
---@field LadderFixDelta boolean
---@field OnInitialized boolean
---@field World boolean
---@field Api boolean
---@field PhysicsUpdateWatcher boolean
---@field ActivityTimers boolean
---@field Pos boolean
---@field ServerPos boolean
---@field PreviousServerPos boolean
---@field PositionBeforeFalling boolean
---@field InChunkIndex3d boolean
---@field CollisionBox boolean
---@field OriginCollisionBox boolean
---@field SelectionBox boolean
---@field OriginSelectionBox boolean
---@field Teleporting boolean
---@field IsTeleport boolean
---@field EntityId boolean
---@field SimulationRange boolean
---@field ClimbingOnFace boolean
---@field ClimbingIntoFace boolean
---@field ClimbingOnCollBox boolean
---@field OnGround boolean
---@field FeetInLiquid boolean
---@field InLava boolean
---@field InLavaBeginTotalMs boolean
---@field OnFireBeginTotalMs boolean
---@field Swimming boolean
---@field CollidedVertically boolean
---@field CollidedHorizontally boolean
---@field State boolean
---@field DespawnReason boolean
---@field WatchedAttributes boolean
---@field DebugAttributes boolean
---@field Attributes boolean
---@field IsRendered boolean
---@field IsShadowRendered boolean
---@field Stats boolean
---@field touchDistanceSq boolean
---@field ownPosRepulse boolean
---@field hasRepulseBehavior boolean
---@field packet boolean
---@field minRangeToClient boolean
---@field SplashParticleProps boolean
---@field FireParticleProps boolean
---@field FloatingSedimentParticles boolean
---@field AirBubbleParticleProps boolean
---@field bioLumiParticles boolean
---@field bioLumiNoise boolean
---@field Code boolean
---@field VariantStrict boolean
---@field Variant boolean
---@field Class boolean
Entity = {}